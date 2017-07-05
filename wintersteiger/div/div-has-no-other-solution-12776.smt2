(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.538494334700241328306447030627168715000152587890625p-1004 {- 2425162885097130 -1004 (-8.97388e-303)}
; +oo / -1.538494334700241328306447030627168715000152587890625p-1004 == -oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00000010011 #b1000100111011010110000111100010010011110011010101010)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
