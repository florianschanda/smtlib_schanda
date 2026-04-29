(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0522206115045877883318325984873808920383453369140625 240 {+ 235180726513121 240 (1.85911e+072)}
; 1.0522206115045877883318325984873808920383453369140625 240 I == 1.0522206115045877883318325984873808920383453369140625 240
; [HW: 1.0522206115045877883318325984873808920383453369140625 240] 

; mpf : + 235180726513121 240
; mpfd: + 235180726513121 240 (1.85911e+072) class: Pos. norm. non-zero
; hwf : + 235180726513121 240 (1.85911e+072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101111 #b0000110101011110010101000111101010010110110111100001)))
(assert (= r (fp #b0 #b10011101111 #b0000110101011110010101000111101010010110110111100001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
