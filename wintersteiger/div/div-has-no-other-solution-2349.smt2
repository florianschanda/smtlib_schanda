(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7284417656730255430375109426677227020263671875p-869 {- 3280610064446144 -869 (-4.39125e-262)}
; Y = -1.6621217875622316118011667640530504286289215087890625p1007 {- 2981931435739153 1007 (-2.27965e+303)}
; -1.7284417656730255430375109426677227020263671875p-869 / -1.6621217875622316118011667640530504286289215087890625p1007 == 0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: 0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : + 1 -1023
; mpfd: + 1 -1023 (4.94066e-324) class: Pos. denorm.
; hwf : + 1 -1023 (4.94066e-324) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011010 #b1011101001111011001010001101100010011011001011000000)))
(assert (= y (fp #b1 #b11111101110 #b1010100110000000110100000011111110001100100000010001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
