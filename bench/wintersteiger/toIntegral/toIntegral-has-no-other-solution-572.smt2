(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.747392739179418175154978598584420979022979736328125 315 {+ 3365957661667842 315 (1.16638e+095)}
; 1.747392739179418175154978598584420979022979736328125 315 I == 1.747392739179418175154978598584420979022979736328125 315
; [HW: 1.747392739179418175154978598584420979022979736328125 315] 

; mpf : + 3365957661667842 315
; mpfd: + 3365957661667842 315 (1.16638e+095) class: Pos. norm. non-zero
; hwf : + 3365957661667842 315 (1.16638e+095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111010 #b1011111101010101001000010110110000001011001000000010)))
(assert (= r (fp #b0 #b10100111010 #b1011111101010101001000010110110000001011001000000010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
