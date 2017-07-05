(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.158059681755059244778749416582286357879638671875 731 {- 711837523854384 731 (-1.30815e+220)}
; -1.158059681755059244778749416582286357879638671875 731 I == -1.158059681755059244778749416582286357879638671875 731
; [HW: -1.158059681755059244778749416582286357879638671875 731] 

; mpf : - 711837523854384 731
; mpfd: - 711837523854384 731 (-1.30815e+220) class: Neg. norm. non-zero
; hwf : - 711837523854384 731 (-1.30815e+220) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011010 #b0010100001110110100110010110101111110100010000110000)))
(assert (= r (fp #b1 #b11011011010 #b0010100001110110100110010110101111110100010000110000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
