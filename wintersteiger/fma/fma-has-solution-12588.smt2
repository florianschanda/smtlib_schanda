(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.38499466124738734862376077217049896717071533203125p768 {+ 1733861812933364 768 (2.15023e+231)}
; Y = 1.184298811437546561364797526039183139801025390625p655 {+ 830008058514960 655 (1.77055e+197)}
; Z = -1.34702269607026092756996149546466767787933349609375p-549 {- 1562851284711132 -549 (-7.30983e-166)}
; 1.38499466124738734862376077217049896717071533203125p768 x 1.184298811437546561364797526039183139801025390625p655 -1.34702269607026092756996149546466767787933349609375p-549 == +oo
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
(assert (= x (fp #b0 #b11011111111 #b0110001010001111000000101001011100110001001011110100)))
(assert (= y (fp #b0 #b11010001110 #b0010111100101110001101001111011111010000111000010000)))
(assert (= z (fp #b1 #b00111011010 #b0101100011010110011110101011101010010111011011011100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
