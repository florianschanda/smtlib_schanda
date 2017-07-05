(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.439118943394289917847572723985649645328521728515625p-189 {+ 1977615909841850 -189 (1.83412e-057)}
; Y = -1.18833029741706486248631335911341011524200439453125p-877 {- 848164257270068 -877 (-1.17932e-264)}
; 1.439118943394289917847572723985649645328521728515625p-189 = -1.18833029741706486248631335911341011524200439453125p-877 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000010 #b0111000001101010000110010101110011101110101110111010)))
(assert (= y (fp #b1 #b00010010010 #b0011000000110110011010100001010001000000100100110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
