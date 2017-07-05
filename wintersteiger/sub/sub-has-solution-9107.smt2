(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2729254951743904644700933204148896038532257080078125p-148 {+ 1229147158367293 -148 (3.5675e-045)}
; Y = 1.1143033686394769876670807207119651138782501220703125p360 {+ 514776608411941 360 (2.61699e+108)}
; 1.2729254951743904644700933204148896038532257080078125p-148 - 1.1143033686394769876670807207119651138782501220703125p360 == -1.11430336863947676562247579568065702915191650390625p360
; [HW: -1.11430336863947676562247579568065702915191650390625p360] 

; mpf : - 514776608411940 360
; mpfd: - 514776608411940 360 (-2.61699e+108) class: Neg. norm. non-zero
; hwf : - 514776608411940 360 (-2.61699e+108) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101011 #b0100010111011110011100011111110000000100110000111101)))
(assert (= y (fp #b0 #b10101100111 #b0001110101000010111111000100111000100001000100100101)))
(assert (= r (fp #b1 #b10101100111 #b0001110101000010111111000100111000100001000100100100)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
