(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.314361327173698246184585514129139482975006103515625p-632 {+ 1415757555919162 -632 (7.37492e-191)}
; Y = -1.93999699743916043104263735585846006870269775390625p18 {- 4233370127396388 18 (-508559)}
; 1.314361327173698246184585514129139482975006103515625p-632 > -1.93999699743916043104263735585846006870269775390625p18 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110000111 #b0101000001111001111110111110001101010110100100111010)))
(assert (= y (fp #b1 #b10000010001 #b1111000010100011101001001010101001010110111000100100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
