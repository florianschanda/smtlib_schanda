(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6770712630873696458166932643507607281208038330078125p-559 {+ 3049257888143549 -559 (8.88759e-169)}
; Y = -1.7003299541499192759630432192352600395679473876953125p106 {- 3154005720545973 106 (-1.37947e+032)}
; 1.6770712630873696458166932643507607281208038330078125p-559 > -1.7003299541499192759630432192352600395679473876953125p106 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010000 #b1010110101010100100010101101010000000101100010111101)))
(assert (= y (fp #b1 #b10001101001 #b1011001101001000110100101110100101111011101010110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
