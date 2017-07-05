(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3425350483139339985427795909345149993896484375p196 {- 1542640715947968 196 (-1.34836e+059)}
; Y = +zero {+ 0 -1023 (0)}
; -1.3425350483139339985427795909345149993896484375p196 / +zero == -oo
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
(assert (= x (fp #b1 #b10011000011 #b0101011110110000011000000111111000111101111111000000)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
