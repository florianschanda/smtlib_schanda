(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.8694790354710537627624944434501230716705322265625p108 {+ 3915785460153896 108 (6.06681e+032)}
; +oo + 1.8694790354710537627624944434501230716705322265625p108 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10001101011 #b1101111010010110001011011001010111100111111000101000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
