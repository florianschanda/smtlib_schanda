(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.0534276154316299933810796574107371270656585693359375p-977 {+ 240616588949183 -977 (8.24706e-295)}
; Z = 1.152757866377397188983877640566788613796234130859375p-540 {+ 687960270095158 -540 (3.20288e-163)}
; +oo x 1.0534276154316299933810796574107371270656585693359375p-977 1.152757866377397188983877640566788613796234130859375p-540 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00000101110 #b0000110110101101011011101010010011111011011010111111)))
(assert (= z (fp #b0 #b00111100011 #b0010011100011011001000111011100001001100001100110110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
