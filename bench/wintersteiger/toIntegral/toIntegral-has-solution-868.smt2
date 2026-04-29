(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.48995118095589607065676318597979843616485595703125 466 {- 2206543955982708 466 (-2.8389e+140)}
; -1.48995118095589607065676318597979843616485595703125 466 I == -1.48995118095589607065676318597979843616485595703125 466
; [HW: -1.48995118095589607065676318597979843616485595703125 466] 

; mpf : - 2206543955982708 466
; mpfd: - 2206543955982708 466 (-2.8389e+140) class: Neg. norm. non-zero
; hwf : - 2206543955982708 466 (-2.8389e+140) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010001 #b0111110101101101011100001100101011010111100101110100)))
(assert (= r (fp #b1 #b10111010001 #b0111110101101101011100001100101011010111100101110100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
