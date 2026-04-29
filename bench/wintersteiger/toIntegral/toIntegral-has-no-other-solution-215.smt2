(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6097676101966467143711270182393491268157958984375 350 {+ 2746149182064216 350 (3.692e+105)}
; 1.6097676101966467143711270182393491268157958984375 350 I == 1.6097676101966467143711270182393491268157958984375 350
; [HW: 1.6097676101966467143711270182393491268157958984375 350] 

; mpf : + 2746149182064216 350
; mpfd: + 2746149182064216 350 (3.692e+105) class: Pos. norm. non-zero
; hwf : + 2746149182064216 350 (3.692e+105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011101 #b1001110000011001101110101110011111110100011001011000)))
(assert (= r (fp #b0 #b10101011101 #b1001110000011001101110101110011111110100011001011000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
