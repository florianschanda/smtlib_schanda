(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4901862494807114334349762430065311491489410400390625 -933 {- 2207602610503473 -933 (-2.05236e-281)}
; -1.4901862494807114334349762430065311491489410400390625 -933 I == -1.0 0
; [HW: -1.0 0] 

; mpf : - 0 0
; mpfd: - 0 0 (-1) class: Neg. norm. non-zero
; hwf : - 0 0 (-1) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011010 #b0111110101111100110110001001011001110111111100110001)))
(assert (= r (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
