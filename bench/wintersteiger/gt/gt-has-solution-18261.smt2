(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5731905567156037051290695671923458576202392578125p352 {+ 2581420777636680 352 (1.44324e+106)}
; Y = -1.16597157267644657707705846405588090419769287109375p596 {- 747469512859740 596 (-3.02389e+179)}
; 1.5731905567156037051290695671923458576202392578125p352 > -1.16597157267644657707705846405588090419769287109375p596 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011111 #b1001001010111100100111011100011101111000001101001000)))
(assert (= y (fp #b1 #b11001010011 #b0010101001111101000111001110110010110110000001011100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
