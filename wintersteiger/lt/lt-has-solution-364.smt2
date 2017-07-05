(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1923678815722424939593793169478885829448699951171875p183 {+ 866347919766803 183 (1.46184e+055)}
; Y = -1.9657389684595705237057927661226131021976470947265625p-505 {- 4349301658491689 -505 (-1.87663e-152)}
; 1.1923678815722424939593793169478885829448699951171875p183 < -1.9657389684595705237057927661226131021976470947265625p-505 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110110 #b0011000100111111000001011000000000100111010100010011)))
(assert (= y (fp #b1 #b01000000110 #b1111011100111010101010110100011000000001101100101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
