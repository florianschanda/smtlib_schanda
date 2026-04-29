(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1946920815417592098839350001071579754352569580078125 223 {+ 876815185883453 223 (1.61044e+067)}
; 1.1946920815417592098839350001071579754352569580078125 223 I == 1.1946920815417592098839350001071579754352569580078125 223
; [HW: 1.1946920815417592098839350001071579754352569580078125 223] 

; mpf : + 876815185883453 223
; mpfd: + 876815185883453 223 (1.61044e+067) class: Pos. norm. non-zero
; hwf : + 876815185883453 223 (1.61044e+067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011110 #b0011000111010111010101110001101100000011000100111101)))
(assert (= r (fp #b0 #b10011011110 #b0011000111010111010101110001101100000011000100111101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
