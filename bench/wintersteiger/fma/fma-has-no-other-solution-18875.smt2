(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.717163473596063028026037500239908695220947265625p-160 {+ 3229817152450960 -160 (1.17493e-048)}
; Z = 1.417798614933345024979871595860458910465240478515625p580 {+ 1881597686529722 580 (5.61064e+174)}
; +oo x 1.717163473596063028026037500239908695220947265625p-160 1.417798614933345024979871595860458910465240478515625p580 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b01101011111 #b1011011110011000000001101000000011111011000110010000)))
(assert (= z (fp #b0 #b11001000011 #b0110101011110100110110011001101101110011111010111010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
