(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.35450367954784223201158965821377933025360107421875p-78 {- 1596542639113132 -78 (-4.48168e-024)}
; Y = 1.424162227956017989782822041888721287250518798828125p525 {+ 1910256851767362 525 (1.56425e+158)}
; -1.35450367954784223201158965821377933025360107421875p-78 > 1.424162227956017989782822041888721287250518798828125p525 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110001 #b0101101011000000110000001100110111111000001110101100)))
(assert (= y (fp #b0 #b11000001100 #b0110110010010101111001010101000101000101000001000010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
