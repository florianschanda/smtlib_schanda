(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9291358789919590410733007956878282129764556884765625 839 {- 4184455998404745 839 (-7.07179e+252)}
; -1.9291358789919590410733007956878282129764556884765625 839 I == -1.9291358789919590410733007956878282129764556884765625 839
; [HW: -1.9291358789919590410733007956878282129764556884765625 839] 

; mpf : - 4184455998404745 839
; mpfd: - 4184455998404745 839 (-7.07179e+252) class: Neg. norm. non-zero
; hwf : - 4184455998404745 839 (-7.07179e+252) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000110 #b1110110111011011110110010101010111001111100010001001)))
(assert (= r (fp #b1 #b11101000110 #b1110110111011011110110010101010111001111100010001001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
