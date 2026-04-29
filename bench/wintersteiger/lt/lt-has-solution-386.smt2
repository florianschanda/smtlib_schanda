(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1599858831052343166589935208321548998355865478515625p19 {- 720512363537273 19 (-608167)}
; Y = -1.290495848730841554896642264793626964092254638671875p-666 {- 1308276996096894 -666 (-4.21482e-201)}
; -1.1599858831052343166589935208321548998355865478515625p19 < -1.290495848730841554896642264793626964092254638671875p-666 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000010010 #b0010100011110100110101011011011111000010001101111001)))
(assert (= y (fp #b1 #b00101100101 #b0100101001011101111011111001100111101100001101111110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
