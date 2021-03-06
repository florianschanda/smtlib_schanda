(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.056467519374703289969374964130111038684844970703125p1023 {+ 254307099214450 1023 (9.49602e+307)}
; Y = -1.9345185048157771401378113296232186257839202880859375p159 {- 4208697190059167 159 (-1.41365e+048)}
; Z = 1.7709263732115003708855738295824266970157623291015625p-380 {+ 3471943727125401 -380 (7.19121e-115)}
; 1.056467519374703289969374964130111038684844970703125p1023 x -1.9345185048157771401378113296232186257839202880859375p159 1.7709263732115003708855738295824266970157623291015625p-380 == -oo
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
(assert (= x (fp #b0 #b11111111110 #b0000111001110100101001111100010100000000001001110010)))
(assert (= y (fp #b1 #b10010011110 #b1110111100111100100110101100111110110000110010011111)))
(assert (= z (fp #b0 #b01010000011 #b1100010101011011011011100100100010010001001110011001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
