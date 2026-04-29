(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3804163245656664305016647631418891251087188720703125 981 {- 1713242817559589 981 (-2.82121e+295)}
; -1.3804163245656664305016647631418891251087188720703125 981 I == -1.3804163245656664305016647631418891251087188720703125 981
; [HW: -1.3804163245656664305016647631418891251087188720703125 981] 

; mpf : - 1713242817559589 981
; mpfd: - 1713242817559589 981 (-2.82121e+295) class: Neg. norm. non-zero
; hwf : - 1713242817559589 981 (-2.82121e+295) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111010100 #b0110000101100010111101101101100011011111110000100101)))
(assert (= r (fp #b1 #b11111010100 #b0110000101100010111101101101100011011111110000100101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
