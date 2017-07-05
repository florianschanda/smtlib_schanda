(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.704961080749015867041862293262965977191925048828125p527 {- 3174862460571970 527 (-7.4907e+158)}
; Y = -zero {- 0 -1023 (-0)}
; -1.704961080749015867041862293262965977191925048828125p527 / -zero == +oo
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
(assert (= x (fp #b1 #b11000001110 #b1011010001111000010101000101001011000101000101000010)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
