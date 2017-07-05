(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8884609443067363887536203037598170340061187744140625p-259 {- 4001272377713057 -259 (-2.03863e-078)}
; Y = -1.162960275275724431054413798847235739231109619140625p310 {- 733907835007946 310 (-2.42585e+093)}
; -1.8884609443067363887536203037598170340061187744140625p-259 > -1.162960275275724431054413798847235739231109619140625p310 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111100 #b1110001101110010001011010010101110010010000110100001)))
(assert (= y (fp #b1 #b10100110101 #b0010100110110111110000111011110011011011001111001010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
