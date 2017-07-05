(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6885600973751435649461427601636387407779693603515625p665 {- 3100998997960889 665 (-2.58502e+200)}
; Y = -1.4194176876329687164712822777801193296909332275390625p834 {- 1888889341736433 834 (-1.62602e+251)}
; -1.6885600973751435649461427601636387407779693603515625p665 < -1.4194176876329687164712822777801193296909332275390625p834 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011000 #b1011000001000101011110010111101110001110100010111001)))
(assert (= y (fp #b1 #b11101000001 #b0110101101011110111101010010001110111111010111110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
