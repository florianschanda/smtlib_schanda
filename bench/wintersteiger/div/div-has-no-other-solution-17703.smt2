(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3666375566068309499456745470524765551090240478515625p868 {- 1651188763314553 868 (-2.68961e+261)}
; Y = 1.606372697471412092085074618807993829250335693359375p-683 {+ 2730859854379894 -683 (4.00276e-206)}
; -1.3666375566068309499456745470524765551090240478515625p868 / 1.606372697471412092085074618807993829250335693359375p-683 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101100011 #b0101110111011011111101010111101100011100100101111001)))
(assert (= y (fp #b0 #b00101010100 #b1001101100111011001111011011100011010011101101110110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
