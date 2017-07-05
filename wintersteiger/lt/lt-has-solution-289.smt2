(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3325435749562080101071614990360103547573089599609375p-656 {- 1497643120257231 -656 (-4.45661e-198)}
; Y = -1.941979248046580952546946718939580023288726806640625p-847 {- 4242297390493322 -847 (-2.06937e-255)}
; -1.3325435749562080101071614990360103547573089599609375p-656 < -1.941979248046580952546946718939580023288726806640625p-847 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101111 #b0101010100100001100100110110001011101110100011001111)))
(assert (= y (fp #b1 #b00010110000 #b1111000100100101100011010100111111011110111010001010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
