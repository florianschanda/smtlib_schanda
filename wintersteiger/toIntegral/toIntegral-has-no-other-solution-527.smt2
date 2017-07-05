(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8135786283423234177547556100762449204921722412109375 763 {+ 3664032407439087 763 (8.79879e+229)}
; 1.8135786283423234177547556100762449204921722412109375 763 I == 1.8135786283423234177547556100762449204921722412109375 763
; [HW: 1.8135786283423234177547556100762449204921722412109375 763] 

; mpf : + 3664032407439087 763
; mpfd: + 3664032407439087 763 (8.79879e+229) class: Pos. norm. non-zero
; hwf : + 3664032407439087 763 (8.79879e+229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111010 #b1101000001000110101100000110000101110100011011101111)))
(assert (= r (fp #b0 #b11011111010 #b1101000001000110101100000110000101110100011011101111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
