(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0016463546014870988898337600403465330600738525390625p-972 {+ 7414521969777 -972 (2.50933e-293)}
; Y = -1.170918336351374211545817161095328629016876220703125p-896 {- 769747755902834 -896 (-2.21641e-270)}
; 1.0016463546014870988898337600403465330600738525390625p-972 = -1.170918336351374211545817161095328629016876220703125p-896 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110011 #b0000000001101011111001010011111100101011110001110001)))
(assert (= y (fp #b1 #b00001111111 #b0010101111000001010011011101100011101010011101110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
