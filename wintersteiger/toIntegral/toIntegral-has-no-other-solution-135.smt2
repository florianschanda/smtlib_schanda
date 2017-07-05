(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.364253371831215755349830942577682435512542724609375 24 {+ 1640451349647510 24 (2.28884e+007)}
; 1.364253371831215755349830942577682435512542724609375 24 I == 1.364253342151641845703125 24
; [HW: 1.364253342151641845703125 24] 

; mpf : + 1640451215982592 24
; mpfd: + 1640451215982592 24 (2.28884e+007) class: Pos. norm. non-zero
; hwf : + 1640451215982592 24 (2.28884e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010111 #b0101110100111111101101010111111101111001000010010110)))
(assert (= r (fp #b0 #b10000010111 #b0101110100111111101101010000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
