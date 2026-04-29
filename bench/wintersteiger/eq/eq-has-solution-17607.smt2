(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3779243714310169810488559960504062473773956298828125p-304 {- 1702020058350957 -304 (-4.22772e-092)}
; Y = -1.7615958382672760595966110486187972128391265869140625p-920 {- 3429922733427425 -920 (-1.98751e-277)}
; -1.3779243714310169810488559960504062473773956298828125p-304 = -1.7615958382672760595966110486187972128391265869140625p-920 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001111 #b0110000010111111101001101100111110101000010101101101)))
(assert (= y (fp #b1 #b00001100111 #b1100001011110111111100011110001000100000101011100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
