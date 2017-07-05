(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.987258806610724182206695331842638552188873291015625p-183 {- 4446218393570298 -183 (-1.62093e-055)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = -oo {- 0 1024 (-1.#INF)}
; -1.987258806610724182206695331842638552188873291015625p-183 x +oo -oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001000 #b1111110010111100111111100011111100010100101111111010)))
(assert (= y (_ +oo 11 53)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
