(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4234802153788270739909194162464700639247894287109375p-98 {- 1907185340178863 -98 (-4.49171e-030)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.4234802153788270739909194162464700639247894287109375p-98 - +oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011101 #b0110110001101001001100110000101110001110000110101111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
