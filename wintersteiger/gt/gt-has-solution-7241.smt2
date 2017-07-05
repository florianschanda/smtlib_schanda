(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9199977110107837585672996283392421901226043701171875p-94 {- 4143301348489875 -94 (-9.69351e-029)}
; Y = -1.8674543138527468499887618236243724822998046875p-890 {- 3906666924628160 -890 (-2.26232e-268)}
; -1.9199977110107837585672996283392421901226043701171875p-94 > -1.8674543138527468499887618236243724822998046875p-890 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100001 #b1110101110000100111110000101000100101111101010010011)))
(assert (= y (fp #b1 #b00010000101 #b1101111000010001011111000110010011000101100011000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
