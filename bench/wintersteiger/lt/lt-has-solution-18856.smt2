(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.149183632159310519682549056597054004669189453125p563 {+ 671863350202448 563 (3.46958e+169)}
; Y = 1.1461074853645947246860714585636742413043975830078125p-271 {+ 658009616644029 -271 (3.02062e-082)}
; 1.149183632159310519682549056597054004669189453125p563 < 1.1461074853645947246860714585636742413043975830078125p-271 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110010 #b0010011000110000111001100000010100111001000001010000)))
(assert (= y (fp #b0 #b01011110000 #b0010010101100111010011001101011101010111011110111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
