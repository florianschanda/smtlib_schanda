(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8876416090659999813539116075844503939151763916015625p991 {+ 3997582419828185 991 (3.95044e+298)}
; Y = 1.848078913695196501265627375687472522258758544921875p-653 {+ 3819407879698462 -653 (4.94462e-197)}
; 1.8876416090659999813539116075844503939151763916015625p991 < 1.848078913695196501265627375687472522258758544921875p-653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011110 #b1110001100111100011110110000000110000001110111011001)))
(assert (= y (fp #b0 #b00101110010 #b1101100100011011101100110001111010111111100000011110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
