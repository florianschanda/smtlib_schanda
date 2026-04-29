(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.50235303055053304177590689505450427532196044921875p348 {- 2262396921195820 348 (-8.61411e+104)}
; Y = 1.0039468855412498893286965540028177201747894287109375p-326 {+ 17775192252847 -326 (7.34399e-099)}
; -1.50235303055053304177590689505450427532196044921875p348 = 1.0039468855412498893286965540028177201747894287109375p-326 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011011 #b1000000010011010001101010100110101000010110100101100)))
(assert (= y (fp #b0 #b01010111001 #b0000000100000010101010011100000001010010000110101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
