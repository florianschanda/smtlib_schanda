(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3271733509744925161299988758401013910770416259765625p-750 {- 1473457781534281 -750 (-2.24094e-226)}
; Y = 1.2526926989105497955989676484023220837116241455078125p506 {+ 1138026744652797 506 (2.62435e+152)}
; -1.3271733509744925161299988758401013910770416259765625p-750 > 1.2526926989105497955989676484023220837116241455078125p506 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010001 #b0101001111000001101000011111101010001110111001001001)))
(assert (= y (fp #b0 #b10111111001 #b0100000010110000011101111111110111000010001111111101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
