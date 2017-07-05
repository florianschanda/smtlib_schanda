(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.14536259715894761512799959746189415454864501953125p-968 {- 654654938398644 -968 (-4.591e-292)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.14536259715894761512799959746189415454864501953125p-968 + -oo == -oo
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
(assert (= x (fp #b1 #b00000110111 #b0010010100110110011110111011000011011011111110110100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
