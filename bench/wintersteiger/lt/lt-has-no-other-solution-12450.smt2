(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1052560105489437347614511963911354541778564453125p-401 {+ 474030929886728 -401 (2.1401e-121)}
; Y = 1.7605405344525111299702757605700753629207611083984375p936 {+ 3425170067560487 936 (1.02264e+282)}
; 1.1052560105489437347614511963911354541778564453125p-401 < 1.7605405344525111299702757605700753629207611083984375p936 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001101110 #b0001101011110010000011101101001100000011111000001000)))
(assert (= y (fp #b0 #b11110100111 #b1100001010110010110010001101001011000001100000100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
