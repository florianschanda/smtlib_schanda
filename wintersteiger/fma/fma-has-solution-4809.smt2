(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0750136054331609347656240061041899025440216064453125p-678 {- 337831245476501 -678 (-8.5719e-205)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = 1.55173611755730522787644076743163168430328369140625p941 {+ 2484798573437924 941 (2.88432e+283)}
; -1.0750136054331609347656240061041899025440216064453125p-678 x +oo 1.55173611755730522787644076743163168430328369140625p941 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101011001 #b0001001100110100000101110111011000010111001010010101)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b0 #b11110101100 #b1000110100111110100101000000010011101110001111100100)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
