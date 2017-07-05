(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4226950330501555441742311813868582248687744140625p-486 {+ 1903649193336040 -486 (7.12088e-147)}
; 1.4226950330501555441742311813868582248687744140625p-486 S == 1.1927678034932680528612536363652907311916351318359375p-243
; [HW: 1.1927678034932680528612536363652907311916351318359375p-243] 

; mpf : + 868149007981311 -243
; mpfd: + 868149007981311 -243 (8.43853e-074) class: Pos. norm. non-zero
; hwf : + 868149007981311 -243 (8.43853e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011001 #b0110110000110101101111011101111100100001110011101000)))
(assert (= r (fp #b0 #b01100001100 #b0011000101011001001110110001001110111001101011111111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
