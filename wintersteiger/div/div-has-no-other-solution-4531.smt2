(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2970508232835396000837135943584144115447998046875p650 {- 1337797977049848 650 (-6.05974e+195)}
; Y = -1.3499377611575089641604563439614139497280120849609375p-441 {- 1575979570751823 -441 (-2.37731e-133)}
; -1.2970508232835396000837135943584144115447998046875p650 / -1.3499377611575089641604563439614139497280120849609375p-441 == +oo
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
(assert (= x (fp #b1 #b11010001001 #b0100110000001011100001011101001101000000101011111000)))
(assert (= y (fp #b1 #b01001000110 #b0101100110010101100001010110011111001110100101001111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
