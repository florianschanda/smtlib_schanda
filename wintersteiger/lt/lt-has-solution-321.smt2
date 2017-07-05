(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.29173007852981580612095058313570916652679443359375p-163 {- 1313835472959644 -163 (-1.1048e-049)}
; Y = -1.5785288760889020220901102220523171126842498779296875p-241 {- 2605462430777051 -241 (-4.46708e-073)}
; -1.29173007852981580612095058313570916652679443359375p-163 < -1.5785288760889020220901102220523171126842498779296875p-241 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011100 #b0100101010101110110100101000101010001011100010011100)))
(assert (= y (fp #b1 #b01100001110 #b1001010000011010011101111110101010010111111011011011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
