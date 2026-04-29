(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5131281349791636525736748808412812650203704833984375p143 {+ 2310923677485479 143 (1.68719e+043)}
; Y = 1.9658350011136054291682739858515560626983642578125p-259 {+ 4349734151116616 -259 (2.12216e-078)}
; 1.5131281349791636525736748808412812650203704833984375p143 = 1.9658350011136054291682739858515560626983642578125p-259 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001110 #b1000001101011100010111011000111001100100100110100111)))
(assert (= y (fp #b0 #b01011111100 #b1111011101000000111101100110111100011101011101001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
