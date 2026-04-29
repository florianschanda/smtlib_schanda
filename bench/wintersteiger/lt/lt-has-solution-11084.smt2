(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4429222520130686735484459859435446560382843017578125p-905 {+ 1994744489120157 -905 (5.33454e-273)}
; Y = 1.0405597465451477123821177883655764162540435791015625p94 {+ 182664859426969 94 (2.06104e+028)}
; 1.4429222520130686735484459859435446560382843017578125p-905 < 1.0405597465451477123821177883655764162540435791015625p94 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110110 #b0111000101100011010110100100101100010001000110011101)))
(assert (= y (fp #b0 #b10001011101 #b0000101001100010000111111010000011110010000010011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
