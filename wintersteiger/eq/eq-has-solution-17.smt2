(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1481521133575764981316069679451175034046173095703125p-796 {+ 667217802511333 -796 (2.75501e-240)}
; Y = 1.39424747747262234298659677733667194843292236328125p-101 {+ 1775532792637460 -101 (5.49934e-031)}
; 1.1481521133575764981316069679451175034046173095703125p-796 = 1.39424747747262234298659677733667194843292236328125p-101 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100011 #b0010010111101101010011000000000110110100001111100101)))
(assert (= y (fp #b0 #b01110011010 #b0110010011101101011001110001011001000110100000010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
