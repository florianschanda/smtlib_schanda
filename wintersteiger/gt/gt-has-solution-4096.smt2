(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3159881380807181283643103597569279372692108154296875p693 {+ 1423084060913819 693 (5.40803e+208)}
; Y = 1.5309726332381321523001815876341424882411956787109375p-915 {+ 2391288153195183 -915 (5.52741e-276)}
; 1.3159881380807181283643103597569279372692108154296875p693 > 1.5309726332381321523001815876341424882411956787109375p-915 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110100 #b0101000011100100100110010011111011111011000010011011)))
(assert (= y (fp #b0 #b00001101100 #b1000011111101101110100101000111011010100001010101111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
