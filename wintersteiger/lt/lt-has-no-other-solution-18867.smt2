(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.37237310521605859747751310351304709911346435546875p-232 {- 1677019377893836 -232 (-1.98844e-070)}
; Y = 1.506596385607493981950710804085247218608856201171875p166 {+ 2281507293449150 166 (1.40921e+050)}
; -1.37237310521605859747751310351304709911346435546875p-232 < 1.506596385607493981950710804085247218608856201171875p166 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010111 #b0101111101010011110110000000010011010000000111001100)))
(assert (= y (fp #b0 #b10010100101 #b1000000110110000010011001111110001110100101110111110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
