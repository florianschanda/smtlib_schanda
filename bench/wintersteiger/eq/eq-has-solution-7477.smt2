(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.665982732971069690819376774015836417675018310546875p-475 {- 2999319588043694 -475 (-1.70774e-143)}
; Y = -1.901134316351539954581539859645999968051910400390625p595 {- 4058348171331562 595 (-2.46525e+179)}
; -1.665982732971069690819376774015836417675018310546875p-475 = -1.901134316351539954581539859645999968051910400390625p595 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100100 #b1010101001111101110110000010100111001111101110101110)))
(assert (= y (fp #b1 #b11001010010 #b1110011010110000101111010001001000001000011111101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
