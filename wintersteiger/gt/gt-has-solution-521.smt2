(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.223496888356049527857294378918595612049102783203125p390 {- 1006540503118770 390 (-3.08533e+117)}
; Y = -1.48941878668795535389790529734455049037933349609375p187 {- 2204146265355996 187 (-2.92164e+056)}
; -1.223496888356049527857294378918595612049102783203125p390 > -1.48941878668795535389790529734455049037933349609375p187 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000101 #b0011100100110111000101111001001000111111001110110010)))
(assert (= y (fp #b1 #b10010111010 #b0111110101001010100011001011001011011111011011011100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
