(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2356202479541735783641343005001544952392578125p971 {- 1061139260887360 971 (-2.4661e+292)}
; Y = 1.9204926242441915373859728788374923169612884521484375p-215 {+ 4145530239543431 -215 (3.64723e-065)}
; -1.2356202479541735783641343005001544952392578125p971 / 1.9204926242441915373859728788374923169612884521484375p-215 == -oo
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
(assert (= x (fp #b1 #b11111001010 #b0011110001010001100110111100101100111101000101000000)))
(assert (= y (fp #b0 #b01100101000 #b1110101110100101011001111001010101010110100010000111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
