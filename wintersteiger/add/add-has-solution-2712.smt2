(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.78218868471177049883635845617391169071197509765625p-324 {- 3522664669001348 -324 (-5.21477e-098)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.78218868471177049883635845617391169071197509765625p-324 + -oo == -oo
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
(assert (= x (fp #b1 #b01010111011 #b1100100000111101100001001000010000100011011010000100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
