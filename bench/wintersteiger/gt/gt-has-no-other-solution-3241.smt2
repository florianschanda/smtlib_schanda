(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4402039455138169188330721226520836353302001953125p-734 {- 1982502324983048 -734 (-1.5937e-221)}
; Y = -1.9124108412425731007289186891284771263599395751953125p745 {- 4109133124628853 745 (-3.53939e+224)}
; -1.4402039455138169188330721226520836353302001953125p-734 > -1.9124108412425731007289186891284771263599395751953125p745 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100001 #b0111000010110001001101001010110110001101010100001000)))
(assert (= y (fp #b1 #b11011101000 #b1110100110010011110000011100001110100111000101110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
