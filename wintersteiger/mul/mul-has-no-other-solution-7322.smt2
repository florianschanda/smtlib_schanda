(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3365361922113929704636348105850629508495330810546875p387 {- 1515624269839915 387 (-4.21298e+116)}
; Y = -1.0136236869026087337175567881786264479160308837890625p709 {- 61355631258001 709 (-2.72988e+213)}
; -1.3365361922113929704636348105850629508495330810546875p387 * -1.0136236869026087337175567881786264479160308837890625p709 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000010 #b0101011000100111001111000110001101110111111000101011)))
(assert (= y (fp #b1 #b11011000100 #b0000001101111100110101111000100110110010100110010001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
