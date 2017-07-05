(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.5868610184310203425894769679871387779712677001953125p-1022 {- 2642987063924213 -1023 (-1.30581e-308)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -0.5868610184310203425894769679871387779712677001953125p-1022 + +oo == +oo
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
(assert (= x (fp #b1 #b00000000000 #b1001011000111100100001100001000101110101010111110101)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
