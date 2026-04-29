(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9189391193252560707804832418332807719707489013671875p-32 {+ 4138533875369395 -32 (4.46788e-010)}
; 1.9189391193252560707804832418332807719707489013671875p-32 S == 1.3852577808210486676188111232477240264415740966796875p-16
; [HW: 1.3852577808210486676188111232477240264415740966796875p-16] 

; mpf : + 1735046798147259 -16
; mpfd: + 1735046798147259 -16 (2.11374e-005) class: Pos. norm. non-zero
; hwf : + 1735046798147259 -16 (2.11374e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111011111 #b1110101100111111100110000001100010000100010110110011)))
(assert (= r (fp #b0 #b01111101111 #b0110001010100000010000010000000100100111111010111011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
