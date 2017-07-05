(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6641676260373918783130875453935004770755767822265625p-431 {- 2991145073133545 -431 (-3.00102e-130)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.6641676260373918783130875453935004770755767822265625p-431 % +oo == -1.6641676260373918783130875453935004770755767822265625p-431
; [HW: -1.6641676260373918783130875453935004770755767822265625p-431] 

; mpf : - 2991145073133545 -431
; mpfd: - 2991145073133545 -431 (-3.00102e-130) class: Neg. norm. non-zero
; hwf : - 2991145073133545 -431 (-3.00102e-130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001010000 #b1010101000000110111000111011100011100100011111101001)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b01001010000 #xaa06e3b8e47e9)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
