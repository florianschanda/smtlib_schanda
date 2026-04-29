(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.992474596803275321832416011602617800235748291015625p-854 {+ 4469708224337914 -854 (1.65873e-257)}
; Y = 1.61616641010905670583497339976020157337188720703125p190 {+ 2774966814965364 190 (2.53621e+057)}
; 1.992474596803275321832416011602617800235748291015625p-854 = 1.61616641010905670583497339976020157337188720703125p190 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101001 #b1111111000010010110100001010111101100001011111111010)))
(assert (= y (fp #b0 #b10010111101 #b1001110110111101000101001111010001001111111001110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
