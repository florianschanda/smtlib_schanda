(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4834040357296824907962218276225030422210693359375p-823 {- 2177058235181592 -823 (-2.652e-248)}
; -1.4834040357296824907962218276225030422210693359375p-823 | == 1.4834040357296824907962218276225030422210693359375p-823
; [HW: 1.4834040357296824907962218276225030422210693359375p-823] 

; mpf : + 2177058235181592 -823
; mpfd: + 2177058235181592 -823 (2.652e-248) class: Pos. norm. non-zero
; hwf : + 2177058235181592 -823 (2.652e-248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011001000 #b0111101111000000010111011110110000110110101000011000)))
(assert (= r (fp #b0 #b00011001000 #b0111101111000000010111011110110000110110101000011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
