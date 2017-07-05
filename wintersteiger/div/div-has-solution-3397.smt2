(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9351120761648126222809196406160481274127960205078125p204 {- 4211370397765501 204 (-4.97537e+061)}
; Y = 1.5523147332248097285400945111177861690521240234375p-990 {+ 2487404426742488 -990 (1.48349e-298)}
; -1.9351120761648126222809196406160481274127960205078125p204 / 1.5523147332248097285400945111177861690521240234375p-990 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001011 #b1110111101100011100000010100100100111000111101111101)))
(assert (= y (fp #b0 #b00000100001 #b1000110101100100011111111001010001001100101011011000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
