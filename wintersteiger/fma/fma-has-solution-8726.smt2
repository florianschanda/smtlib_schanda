(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.685069611106592812888038679375313222408294677734375p512 {+ 3085279245302502 512 (2.25931e+154)}
; Z = 1.3462989590968075237498169371974654495716094970703125p-847 {+ 1559591863147173 -847 (1.43461e-255)}
; +oo x 1.685069611106592812888038679375313222408294677734375p512 1.3462989590968075237498169371974654495716094970703125p-847 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10111111111 #b1010111101100000101110001101011100101111101011100110)))
(assert (= z (fp #b0 #b00010110000 #b0101100010100111000011000110111111110101101010100101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
