(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.674700440782687760332692050724290311336517333984375p-731 {- 3038580653695622 -731 (-1.48255e-220)}
; Y = -1.6552635981398953202159418651717714965343475341796875p619 {- 2951044896412283 619 (-3.60109e+186)}
; -1.674700440782687760332692050724290311336517333984375p-731 = -1.6552635981398953202159418651717714965343475341796875p619 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100100 #b1010110010111001001010110000011111000010001010000110)))
(assert (= y (fp #b1 #b11001101010 #b1010011110111111010110101110110001000101001001111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
