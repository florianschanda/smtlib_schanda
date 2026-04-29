(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3296637942913538399380968257901258766651153564453125p-558 {- 1484673741128085 -558 (-1.4093e-168)}
; Y = -1.72797035695135559052459939266555011272430419921875p196 {- 3278487028302892 196 (-1.73546e+059)}
; -1.3296637942913538399380968257901258766651153564453125p-558 < -1.72797035695135559052459939266555011272430419921875p196 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010001 #b0101010001100100110110001010111100101000000110010101)))
(assert (= y (fp #b1 #b10011000011 #b1011101001011100010000111110101110010000010000101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
