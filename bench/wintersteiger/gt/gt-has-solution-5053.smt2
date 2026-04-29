(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3534192028186311507198524850537069141864776611328125p781 {+ 1591658590119565 781 (1.72131e+235)}
; Y = 1.44616160588384001783879284630529582500457763671875p-412 {+ 2009333242005484 -412 (1.36728e-124)}
; 1.3534192028186311507198524850537069141864776611328125p781 > 1.44616160588384001783879284630529582500457763671875p-412 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001100 #b0101101001111001101011100100110111100010011010001101)))
(assert (= y (fp #b0 #b01001100011 #b0111001000110111101001011010001000000000011111101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
