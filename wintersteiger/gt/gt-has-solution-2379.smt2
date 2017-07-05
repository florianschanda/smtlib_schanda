(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4259448653563853159909058376797474920749664306640625p-384 {+ 1918285136899393 -384 (3.61897e-116)}
; Y = 1.1401940657749405350074312082142569124698638916015625p792 {+ 631377942383577 792 (2.96986e+238)}
; 1.4259448653563853159909058376797474920749664306640625p-384 > 1.1401940657749405350074312082142569124698638916015625p792 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111111 #b0110110100001010101110010000001010011010110101000001)))
(assert (= y (fp #b0 #b11100010111 #b0010001111100011110000100001111110011000101111011001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
