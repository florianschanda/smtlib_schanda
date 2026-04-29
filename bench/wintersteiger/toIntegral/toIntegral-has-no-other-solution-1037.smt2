(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6901505601772395248616476237657479941844940185546875 719 {- 3108161805643755 719 (-4.66114e+216)}
; -1.6901505601772395248616476237657479941844940185546875 719 I == -1.6901505601772395248616476237657479941844940185546875 719
; [HW: -1.6901505601772395248616476237657479941844940185546875 719] 

; mpf : - 3108161805643755 719
; mpfd: - 3108161805643755 719 (-4.66114e+216) class: Neg. norm. non-zero
; hwf : - 3108161805643755 719 (-4.66114e+216) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011001110 #b1011000010101101101101010000010101000110111111101011)))
(assert (= r (fp #b1 #b11011001110 #b1011000010101101101101010000010101000110111111101011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
