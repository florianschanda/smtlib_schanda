(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8633826849155827876103330709156580269336700439453125p-769 {- 3888329938063957 -769 (-6.00116e-232)}
; Y = 1.2865826011190633071379352259100414812564849853515625p457 {+ 1290653295610681 457 (4.78791e+137)}
; -1.8633826849155827876103330709156580269336700439453125p-769 < 1.2865826011190633071379352259100414812564849853515625p457 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111110 #b1101110100000110101001011100101110100101001001010101)))
(assert (= y (fp #b0 #b10111001000 #b0100100101011101011110100011001101101000101100111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
