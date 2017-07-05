(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.507491617583498477728198849945329129695892333984375p837 {- 2285539059842694 837 (-1.38153e+252)}
; Y = -1.8543892613107573197339661419391632080078125p-671 {- 3847827158868480 -671 (-1.89267e-202)}
; -1.507491617583498477728198849945329129695892333984375p837 > -1.8543892613107573197339661419391632080078125p-671 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000100 #b1000000111101010111110000111110010000011111010000110)))
(assert (= y (fp #b1 #b00101100000 #b1101101010111001010000010010111101100010001000000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
