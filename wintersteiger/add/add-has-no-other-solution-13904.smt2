(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7551188468492260330577892091241665184497833251953125p-143 {+ 3400752957290613 -143 (1.57405e-043)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.7551188468492260330577892091241665184497833251953125p-143 + +oo == +oo
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
(assert (= x (fp #b0 #b01101110000 #b1100000101001111011101111111111111001111100001110101)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
