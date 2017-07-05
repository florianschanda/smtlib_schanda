(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4940605279420464679418500963947735726833343505859375p-994 {+ 2225050809538271 -994 (8.92385e-300)}
; Y = 1.47865851272867043775249840109609067440032958984375p859 {+ 2155686299562556 859 (5.68374e+258)}
; 1.4940605279420464679418500963947735726833343505859375p-994 > 1.47865851272867043775249840109609067440032958984375p859 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011101 #b0111111001111010110000000011000111000001011011011111)))
(assert (= y (fp #b0 #b11101011010 #b0111101010001001010111010100001000011111001000111100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
