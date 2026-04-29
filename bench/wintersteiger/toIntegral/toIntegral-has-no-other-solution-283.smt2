(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.04812733972335525578500892152078449726104736328125 96 {+ 216746269244436 96 (8.30412e+028)}
; 1.04812733972335525578500892152078449726104736328125 96 I == 1.04812733972335525578500892152078449726104736328125 96
; [HW: 1.04812733972335525578500892152078449726104736328125 96] 

; mpf : + 216746269244436 96
; mpfd: + 216746269244436 96 (8.30412e+028) class: Pos. norm. non-zero
; hwf : + 216746269244436 96 (8.30412e+028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011111 #b0000110001010010000100101100011000100111110000010100)))
(assert (= r (fp #b0 #b10001011111 #b0000110001010010000100101100011000100111110000010100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
