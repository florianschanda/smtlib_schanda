(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4890308767092788055919072576216422021389007568359375 24 {+ 2202399274120575 24 (2.49818e+007)}
; 1.4890308767092788055919072576216422021389007568359375 24 I == 1.4890308380126953125 24
; [HW: 1.4890308380126953125 24] 

; mpf : + 2202399099846656 24
; mpfd: + 2202399099846656 24 (2.49818e+007) class: Pos. norm. non-zero
; hwf : + 2202399099846656 24 (2.49818e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010111 #b0111110100110001001000001010011000110011010101111111)))
(assert (= r (fp #b0 #b10000010111 #b0111110100110001001000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
