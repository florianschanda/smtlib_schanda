(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.79647726478738878341800955240614712238311767578125p-571 {- 3587014712905556 -571 (-2.32431e-172)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.79647726478738878341800955240614712238311767578125p-571 - +oo == -oo
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
(assert (= x (fp #b1 #b00111000100 #b1100101111100101111011110001110001000100111101010100)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
