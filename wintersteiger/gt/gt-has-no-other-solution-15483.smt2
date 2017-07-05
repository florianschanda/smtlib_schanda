(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4869668387093939454501878572045825421810150146484375p-243 {- 2193103673353415 -243 (-1.05199e-073)}
; Y = 1.740405561680307133798351060249842703342437744140625p639 {+ 3334490211686474 639 (3.97025e+192)}
; -1.4869668387093939454501878572045825421810150146484375p-243 > 1.740405561680307133798351060249842703342437744140625p639 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100001100 #b0111110010101001110110111101011001111110010011000111)))
(assert (= y (fp #b0 #b11001111110 #b1011110110001011001110000000100100110001100001001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
