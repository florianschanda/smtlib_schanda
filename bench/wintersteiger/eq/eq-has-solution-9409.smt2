(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7234151987852737164530481095425784587860107421875p862 {- 3257972419683512 862 (-5.29964e+259)}
; Y = 1.2274696256735584398711580433882772922515869140625p-765 {+ 1024432121421544 -765 (6.32505e-231)}
; -1.7234151987852737164530481095425784587860107421875p862 = 1.2274696256735584398711580433882772922515869140625p-765 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011101 #b1011100100110001101111010000110000110110010010111000)))
(assert (= y (fp #b0 #b00100000010 #b0011101000111011011100110000101100011001111011101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
