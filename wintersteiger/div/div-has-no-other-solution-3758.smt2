(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5975382875692212270024583631311543285846710205078125p509 {- 2691073209236349 509 (-2.67744e+153)}
; Y = 1.3491613039282397412677028114558197557926177978515625p-543 {+ 1572482718263417 -543 (4.68572e-164)}
; -1.5975382875692212270024583631311543285846710205078125p509 / 1.3491613039282397412677028114558197557926177978515625p-543 == -oo
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
(assert (= x (fp #b1 #b10111111100 #b1001100011111000010001001110101100110111101101111101)))
(assert (= y (fp #b0 #b00111100000 #b0101100101100010101000101001110101100110100001111001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
