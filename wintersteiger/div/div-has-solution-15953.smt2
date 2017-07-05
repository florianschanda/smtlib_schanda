(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2752267753745261114062259366619400680065155029296875p968 {- 1239511203019099 968 (-3.18144e+291)}
; Y = +zero {+ 0 -1023 (0)}
; -1.2752267753745261114062259366619400680065155029296875p968 / +zero == -oo
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
(assert (= x (fp #b1 #b11111000111 #b0100011001110101010000110000111100110111100101011011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
