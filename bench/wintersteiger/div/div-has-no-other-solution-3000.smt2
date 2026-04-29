(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4798437817739775734793283845647238194942474365234375p991 {- 2161024276793335 991 (-3.097e+298)}
; Y = -1.404151471936299966358774327090941369533538818359375p-276 {- 1820136418413558 -276 (-1.15647e-083)}
; -1.4798437817739775734793283845647238194942474365234375p991 / -1.404151471936299966358774327090941369533538818359375p-276 == +oo
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
(assert (= x (fp #b1 #b11111011110 #b0111101011010111000010101100010111101000011111110111)))
(assert (= y (fp #b1 #b01011101011 #b0110011101110110011110001000101010011000101111110110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
