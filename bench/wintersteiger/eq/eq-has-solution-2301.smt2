(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.50478883056767553938470882712863385677337646484375p15 {- 2273366789245372 15 (-49308.9)}
; Y = 0.265669322970644383730132176424376666545867919921875p-1022 {+ 1196468263934366 -1023 (5.91134e-309)}
; -1.50478883056767553938470882712863385677337646484375p15 = 0.265669322970644383730132176424376666545867919921875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001110 #b1000000100111001110101110011111010101100100110111100)))
(assert (= y (fp #b0 #b00000000000 #b0100010000000010111001111001110110110101100110011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
