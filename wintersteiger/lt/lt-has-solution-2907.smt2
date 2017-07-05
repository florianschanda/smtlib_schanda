(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0080270901383012738250499751302413642406463623046875p948 {- 36150800155723 948 (-2.39833e+285)}
; Y = 1.9313968786161803681267201682203449308872222900390625p-963 {+ 4194638635469873 -963 (2.47734e-290)}
; -1.0080270901383012738250499751302413642406463623046875p948 < 1.9313968786161803681267201682203449308872222900390625p-963 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110011 #b0000001000001110000100000011100110100000010001001011)))
(assert (= y (fp #b0 #b00000111100 #b1110111001110000000001101001110101000000110000110001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
