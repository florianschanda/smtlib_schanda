(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2652245352324216209893847917555831372737884521484375p-832 {+ 1194465118042247 -832 (4.41785e-251)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.2652245352324216209893847917555831372737884521484375p-832 + -oo == -oo
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
(assert (= x (fp #b0 #b00010111111 #b0100001111100101110000010101000011101011100010000111)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
