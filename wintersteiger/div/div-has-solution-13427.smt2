(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.45874932331081641478931487654335796833038330078125p338 {+ 2066023281519060 338 (8.16807e+101)}
; Y = 1.0281777698617287075677495522540993988513946533203125p-764 {+ 126901393849413 -764 (1.05962e-230)}
; 1.45874932331081641478931487654335796833038330078125p338 / 1.0281777698617287075677495522540993988513946533203125p-764 == +oo
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
(assert (= x (fp #b0 #b10101010001 #b0111010101110000100110000111110010101110100111010100)))
(assert (= y (fp #b0 #b00100000011 #b0000011100110110101010001000100000000111110001000101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
