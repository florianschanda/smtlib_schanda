(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.713340974241868597260918249958194792270660400390625p45 {- 3212602145783786 45 (-6.02828e+013)}
; Y = 1.1415583311909032193653956710477359592914581298828125p397 {+ 637522047602541 397 (3.68474e+119)}
; -1.713340974241868597260918249958194792270660400390625p45 < 1.1415583311909032193653956710477359592914581298828125p397 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000101100 #b1011011010011101100000111001101101000011111111101010)))
(assert (= y (fp #b0 #b10110001100 #b0010010000111101001010101011001011110000111101101101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
