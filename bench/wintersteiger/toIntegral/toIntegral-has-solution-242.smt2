(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9080225745438690321265085003688000142574310302734375 854 {+ 4089370128359767 854 (2.29192e+257)}
; 1.9080225745438690321265085003688000142574310302734375 854 I == 1.9080225745438690321265085003688000142574310302734375 854
; [HW: 1.9080225745438690321265085003688000142574310302734375 854] 

; mpf : + 4089370128359767 854
; mpfd: + 4089370128359767 854 (2.29192e+257) class: Pos. norm. non-zero
; hwf : + 4089370128359767 854 (2.29192e+257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010101 #b1110100001110100001010101101110110110010000101010111)))
(assert (= r (fp #b0 #b11101010101 #b1110100001110100001010101101110110110010000101010111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
