(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7828473310347374702899969634017907083034515380859375p579 {+ 3525630948336031 579 (3.52762e+174)}
; Y = 1.353028239641626218059400343918241560459136962890625p593 {+ 1589897848501290 593 (4.38626e+178)}
; 1.7828473310347374702899969634017907083034515380859375p579 < 1.353028239641626218059400343918241560459136962890625p593 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000010 #b1100100001101000101011101100010010001110000110011111)))
(assert (= y (fp #b0 #b11001010000 #b0101101001100000000011110000011111010011010000101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
