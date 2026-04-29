(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3348890960592287857622295632609166204929351806640625p233 {- 1508206408222785 233 (-1.84261e+070)}
; Y = -1.7379404830631963729814515318139456212520599365234375p-514 {- 3323388484545015 -514 (-3.24054e-155)}
; -1.3348890960592287857622295632609166204929351806640625p233 < -1.7379404830631963729814515318139456212520599365234375p-514 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101000 #b0101010110111011010010101011001101011100100001000001)))
(assert (= y (fp #b1 #b00111111101 #b1011110011101001101010101110000100100110100111110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
