(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2681901288203316635616602070513181388378143310546875p524 {+ 1207820964219691 524 (6.96469e+157)}
; Y = -1.4178555190109574102308442888897843658924102783203125p-560 {- 1881853959712453 -560 (-3.75694e-169)}
; 1.2681901288203316635616602070513181388378143310546875p524 = -1.4178555190109574102308442888897843658924102783203125p-560 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001011 #b0100010010101000000110111011100001100100101100101011)))
(assert (= y (fp #b1 #b00111001111 #b0110101011111000100101000100110010011010111011000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
