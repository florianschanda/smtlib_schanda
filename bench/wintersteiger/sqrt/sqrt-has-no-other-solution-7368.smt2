(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9938582822168957608965911276754923164844512939453125p-280 {+ 4475939789451093 -280 (1.02635e-084)}
; 1.9938582822168957608965911276754923164844512939453125p-280 S == 1.4120404676272191313302073467639274895191192626953125p-140
; [HW: 1.4120404676272191313302073467639274895191192626953125p-140] 

; mpf : + 1855665296467509 -140
; mpfd: + 1855665296467509 -140 (1.01309e-042) class: Pos. norm. non-zero
; hwf : + 1855665296467509 -140 (1.01309e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100111 #b1111111001101101011111110001001011111010111101010101)))
(assert (= r (fp #b0 #b01101110011 #b0110100101111011011110111110110100010110011000110101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
