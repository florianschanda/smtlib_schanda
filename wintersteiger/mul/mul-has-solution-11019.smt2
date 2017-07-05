(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.96150668863308652589694247581064701080322265625p530 {+ 4330241164642208 530 (6.89426e+159)}
; Y = -1.9121397708908480783662753310636617243289947509765625p488 {- 4107912332293833 488 (-1.52812e+147)}
; 1.96150668863308652589694247581064701080322265625p530 * -1.9121397708908480783662753310636617243289947509765625p488 == -1.8753374751018678789904470249894075095653533935546875p1019
; [HW: -1.8753374751018678789904470249894075095653533935546875p1019] 

; mpf : - 3942169526692203 1019
; mpfd: - 3942169526692203 1019 (-1.05353e+307) class: Neg. norm. non-zero
; hwf : - 3942169526692203 1019 (-1.05353e+307) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010001 #b1111011000100101010011010110011010010000011110100000)))
(assert (= y (fp #b1 #b10111100111 #b1110100110000001111111011111010101011011011011001001)))
(assert (= r (fp #b1 #b11111111010 #b1110000000010110000111011110010010000110100101101011)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
