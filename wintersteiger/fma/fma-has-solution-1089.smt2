(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2727368285808466907838010229170322418212890625p179 {- 1228297479566912 179 (-9.75232e+053)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = 1.318026071121354281245885431417264044284820556640625p425 {+ 1432262095396234 425 (1.14202e+128)}
; -1.2727368285808466907838010229170322418212890625p179 x +oo 1.318026071121354281245885431417264044284820556640625p425 == -oo
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
(assert (= x (fp #b1 #b10010110010 #b0100010111010010000101001010111100101011011001000000)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b0 #b10110101000 #b0101000101101010001010000001011010111101110110001010)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
