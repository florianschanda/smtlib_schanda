(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4695578883593112262673230361542664468288421630859375 84 {- 2114700731043871 84 (-2.84254e+025)}
; -1.4695578883593112262673230361542664468288421630859375 84 I == -1.4695578883593112262673230361542664468288421630859375 84
; [HW: -1.4695578883593112262673230361542664468288421630859375 84] 

; mpf : - 2114700731043871 84
; mpfd: - 2114700731043871 84 (-2.84254e+025) class: Neg. norm. non-zero
; hwf : - 2114700731043871 84 (-2.84254e+025) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010011 #b0111100000110100111100100001111000010101000000011111)))
(assert (= r (fp #b1 #b10001010011 #b0111100000110100111100100001111000010101000000011111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
