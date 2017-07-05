(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6192105116840844747372329948120750486850738525390625p575 {- 2788676229684337 575 (-2.0024e+173)}
; Y = -1.987442330970246029409054244752041995525360107421875p472 {- 4447044913807454 472 (-2.42355e+142)}
; -1.6192105116840844747372329948120750486850738525390625p575 * -1.987442330970246029409054244752041995525360107421875p472 == +oo
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
(assert (= x (fp #b1 #b11000111110 #b1001111010000100100101001000000100000101110001110001)))
(assert (= y (fp #b1 #b10111010111 #b1111110011001001000001010100011000110100000001011110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
