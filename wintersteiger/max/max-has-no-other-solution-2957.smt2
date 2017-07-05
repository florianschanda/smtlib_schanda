(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.33278857321619259579392746672965586185455322265625p-711 {+ 1498746494329604 -711 (1.23718e-214)}
; +oo M 1.33278857321619259579392746672965586185455322265625p-711 == +oo
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
(assert (= y (fp #b0 #b00100111000 #b0101010100110001101000011100011001110010001100000100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
