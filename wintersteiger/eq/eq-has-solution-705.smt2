(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1585068264085975897614844143390655517578125p-697 {+ 713851284349440 -697 (1.76194e-210)}
; Y = 1.7206332641271744332556181689142249524593353271484375p79 {+ 3245443699793927 79 (1.04006e+024)}
; 1.1585068264085975897614844143390655517578125p-697 = 1.7206332641271744332556181689142249524593353271484375p79 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101000110 #b0010100010010011111001110100001110011110001000000000)))
(assert (= y (fp #b0 #b10001001110 #b1011100001111011011010111110110111010110000000000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
