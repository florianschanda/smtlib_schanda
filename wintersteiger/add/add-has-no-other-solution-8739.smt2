(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.7480998289515732313503804107313044369220733642578125p964 {+ 3369142110902237 964 (2.72573e+290)}
; +oo + 1.7480998289515732313503804107313044369220733642578125p964 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11111000011 #b1011111110000011011110000110101101111101011111011101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
