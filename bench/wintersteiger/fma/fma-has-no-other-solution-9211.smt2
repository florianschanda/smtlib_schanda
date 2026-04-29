(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.4599524309177223102551579358987510204315185546875p-920 {- 2071441596489208 -920 (-1.64719e-277)}
; Z = -1.5997628791580085216850193319260142743587493896484375p597 {- 2701091879086663 597 (-8.2978e+179)}
; +oo x -1.4599524309177223102551579358987510204315185546875p-920 -1.5997628791580085216850193319260142743587493896484375p597 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00001100111 #b0111010110111111011100010100100010000001110111111000)))
(assert (= z (fp #b1 #b11001010100 #b1001100110001010000011110101111101010110101001000111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
