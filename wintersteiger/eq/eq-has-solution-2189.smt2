(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7207652095710430639741161940037272870540618896484375p-197 {+ 3246037929245767 -197 (8.56668e-060)}
; Y = -1.5618992279896961594687354590860195457935333251953125p494 {- 2530569153794165 494 (-7.9886e+148)}
; 1.7207652095710430639741161940037272870540618896484375p-197 = -1.5618992279896961594687354590860195457935333251953125p494 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111010 #b1011100010000100000100011001101100110011110001000111)))
(assert (= y (fp #b1 #b10111101101 #b1000111111011000101000001011011111011101000001110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
