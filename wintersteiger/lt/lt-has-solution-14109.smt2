(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4545354544850244149500895218807272613048553466796875p-860 {- 2047045703445435 -860 (-1.89203e-259)}
; Y = -1.125058992247933264962966859457083046436309814453125p249 {- 563215630887122 249 (-1.01776e+075)}
; -1.4545354544850244149500895218807272613048553466796875p-860 < -1.125058992247933264962966859457083046436309814453125p249 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100011 #b0111010001011100011011110111111111100010101110111011)))
(assert (= y (fp #b1 #b10011111000 #b0010000000000011110111011011100111000110100011010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
