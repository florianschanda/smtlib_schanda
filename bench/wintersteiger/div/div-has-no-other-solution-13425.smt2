(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.757175007483157802568030092515982687473297119140625p-889 {- 3410013081555402 -889 (-4.25744e-268)}
; Y = 1.0645064398687782425412251541274599730968475341796875p900 {+ 290511178556027 900 (8.99797e+270)}
; -1.757175007483157802568030092515982687473297119140625p-889 / 1.0645064398687782425412251541274599730968475341796875p900 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000110 #b1100000111010110001110001010011001111101000111001010)))
(assert (= y (fp #b0 #b11110000011 #b0001000010000011011111100111100110011110001001111011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
