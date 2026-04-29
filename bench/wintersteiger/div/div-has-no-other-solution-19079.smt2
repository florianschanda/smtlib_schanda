(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6695750087933480809709863024181686341762542724609375p828 {+ 3015497760098319 828 (2.98842e+249)}
; Y = -1.36195609993199884257819576305337250232696533203125p-357 {- 1630105356778228 -357 (-4.63932e-108)}
; 1.6695750087933480809709863024181686341762542724609375p828 / -1.36195609993199884257819576305337250232696533203125p-357 == -oo
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
(assert (= x (fp #b0 #b11100111011 #b1010101101101001010001001000110011111100100000001111)))
(assert (= y (fp #b1 #b01010011010 #b0101110010101001001001111010101111001011101011110100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
