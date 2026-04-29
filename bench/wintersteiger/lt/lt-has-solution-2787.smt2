(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1861458165047868984487422494566999375820159912109375p-6 {- 838326229847535 -6 (-0.0185335)}
; Y = 1.7010016798290339412602634183713234961032867431640625p-458 {+ 3157030904064129 -458 (2.28542e-138)}
; -1.1861458165047868984487422494566999375820159912109375p-6 < 1.7010016798290339412602634183713234961032867431640625p-458 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111001 #b0010111110100111010000001001001000101100110111101111)))
(assert (= y (fp #b0 #b01000110101 #b1011001101110100110110001001100101001110100010000001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
