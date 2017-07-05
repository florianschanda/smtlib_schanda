(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9013144686117957604665207327343523502349853515625p474 {+ 4059159504983720 474 (9.2741e+142)}
; Y = 1.7500862990028365206995886182994581758975982666015625p-571 {+ 3378088376684889 -571 (2.26429e-172)}
; 1.9013144686117957604665207327343523502349853515625p474 / 1.7500862990028365206995886182994581758975982666015625p-571 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011001 #b1110011010111100100010111000011000011001011010101000)))
(assert (= y (fp #b0 #b00111000100 #b1100000000000101101001111101101101100101000101011001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
