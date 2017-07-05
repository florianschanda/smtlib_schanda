(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.861274240268638191508898671600036323070526123046875p-81 {- 3878834347537646 -81 (-7.69805e-025)}
; Y = -1.438316205228624244938373522018082439899444580078125p901 {- 1974000698538082 901 (-2.43153e+271)}
; -1.861274240268638191508898671600036323070526123046875p-81 > -1.438316205228624244938373522018082439899444580078125p901 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101110 #b1101110001111100011101111111011011010111010011101110)))
(assert (= y (fp #b1 #b11110000100 #b0111000000110101011111011010011011000011100001100010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
