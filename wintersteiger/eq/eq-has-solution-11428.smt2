(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.755895042117538107362406663014553487300872802734375p-954 {+ 3404248630011750 -954 (1.15314e-287)}
; Y = 1.7395813122350143320460347240441478788852691650390625p-430 {+ 3330778122191793 -430 (6.27403e-130)}
; 1.755895042117538107362406663014553487300872802734375p-954 = 1.7395813122350143320460347240441478788852691650390625p-430 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000101 #b1100000110000010010101100110010100011010011101100110)))
(assert (= y (fp #b0 #b01001010001 #b1011110101010101001100110110110011001000001110110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
