(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.456416446072383852339271470555104315280914306640625p-102 {- 2055516936457354 -102 (-2.87227e-031)}
; Y = 1.8486919693800507591419091113493777811527252197265625p219 {+ 3822168837052329 219 (1.55752e+066)}
; -1.456416446072383852339271470555104315280914306640625p-102 < 1.8486919693800507591419091113493777811527252197265625p219 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110011001 #b0111010011010111101101010100110100111100110010001010)))
(assert (= y (fp #b0 #b10011011010 #b1101100101000011111000000111110011011101011110101001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
