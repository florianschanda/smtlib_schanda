(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.732267372019049123110789878410287201404571533203125p861 {- 3297839063760562 861 (-2.66343e+259)}
; Y = 1.9171265721852670527169948400114662945270538330078125p689 {+ 4130370888745149 689 (4.924e+207)}
; Z = 1.718834804687355610752774737193249166011810302734375p54 {+ 3237344158530918 54 (3.09638e+016)}
; -1.732267372019049123110789878410287201404571533203125p861 x 1.9171265721852670527169948400114662945270538330078125p689 1.718834804687355610752774737193249166011810302734375p54 == -oo
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
(assert (= x (fp #b1 #b11101011100 #b1011101101110101110111111101111010111111111010110010)))
(assert (= y (fp #b0 #b11010110000 #b1110101011001000110011101001100111010100000010111101)))
(assert (= z (fp #b0 #b10000110101 #b1011100000000101100011101100100101011011110101100110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
