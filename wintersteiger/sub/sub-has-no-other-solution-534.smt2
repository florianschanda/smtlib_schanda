(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0600998881472210033649616889306344091892242431640625p269 {- 270665833864833 269 (-1.00558e+081)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.0600998881472210033649616889306344091892242431640625p269 - -oo == +oo
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
(assert (= x (fp #b1 #b10100001100 #b0000111101100010101101001100111000010101111010000001)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
