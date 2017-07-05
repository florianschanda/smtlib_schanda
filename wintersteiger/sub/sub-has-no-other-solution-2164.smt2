(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -0.8215639898914464112067435053177177906036376953125p-1022 {- 3699995278736136 -1023 (-1.82804e-308)}
; +oo - -0.8215639898914464112067435053177177906036376953125p-1022 == +oo
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
(assert (= y (fp #b1 #b00000000000 #b1101001001010010000001001000010000100111101100001000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
