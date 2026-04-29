(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0245776481403401358960536526865325868129730224609375p-681 {+ 110687887006479 -681 (1.02122e-205)}
; Y = 1.5237648906801235515473535997443832457065582275390625p123 {+ 2358827366496753 123 (1.62034e+037)}
; 1.0245776481403401358960536526865325868129730224609375p-681 > 1.5237648906801235515473535997443832457065582275390625p123 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010110 #b0000011001001010101110001000001011111001101100001111)))
(assert (= y (fp #b0 #b10001111010 #b1000011000010101011101001011010001000011100111110001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
