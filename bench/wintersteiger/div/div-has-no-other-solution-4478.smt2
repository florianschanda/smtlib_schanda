(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.60664687602680000821919747977517545223236083984375p281 {+ 2732094644819772 281 (6.24237e+084)}
; Y = -1.2468859585683846891157600111910142004489898681640625p-817 {- 1111875511011585 -817 (-1.42666e-246)}
; 1.60664687602680000821919747977517545223236083984375p281 / -1.2468859585683846891157600111910142004489898681640625p-817 == -oo
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
(assert (= x (fp #b0 #b10100011000 #b1001101101001101001101011010110011000001011100111100)))
(assert (= y (fp #b1 #b00011001110 #b0011111100110011111010110000110111100100100100000001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
