(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6708135255206058022992010592133738100528717041015625p-45 {- 3021075543569689 -45 (-4.74874e-014)}
; Y = -zero {- 0 -1023 (-0)}
; -1.6708135255206058022992010592133738100528717041015625p-45 / -zero == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111010010 #b1010101110111010011011110110100111010011010100011001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
