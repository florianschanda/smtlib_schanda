(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.515534917862887187567366709117777645587921142578125p444 {+ 2321762863983778 444 (6.88468e+133)}
; Y = 1.6941625681924634694297537862439639866352081298828125p-233 {+ 3126230283446125 -233 (1.22734e-070)}
; 1.515534917862887187567366709117777645587921142578125p444 > 1.6941625681924634694297537862439639866352081298828125p-233 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110111011 #b1000001111111010000110001010110000101010110010100010)))
(assert (= y (fp #b0 #b01100010110 #b1011000110110100101000110101100001111110011101101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
