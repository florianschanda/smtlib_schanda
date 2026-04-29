(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7421880748004088257374633030849508941173553466796875p270 {+ 3342517937109947 270 (3.30517e+081)}
; Y = 1.9558067792389921546458708689897321164608001708984375p526 {+ 4304571054818919 526 (4.29639e+158)}
; 1.7421880748004088257374633030849508941173553466796875p270 = 1.9558067792389921546458708689897321164608001708984375p526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001101 #b1011111000000000000010011010010010111111101110111011)))
(assert (= y (fp #b0 #b11000001101 #b1111010010101111110000001100101000100000011001100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
