(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4203803529913887615521161933429539203643798828125p731 {- 1893224801085896 731 (-1.60447e+220)}
; Y = -1.2112576355794864024773005439783446490764617919921875p536 {- 951419808874947 536 (-2.72467e+161)}
; -1.4203803529913887615521161933429539203643798828125p731 < -1.2112576355794864024773005439783446490764617919921875p536 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011010 #b0110101110011110000010111111101111111010100111001000)))
(assert (= y (fp #b1 #b11000010111 #b0011011000010100111110101111101111011000000111000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
