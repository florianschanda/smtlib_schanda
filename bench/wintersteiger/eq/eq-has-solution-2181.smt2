(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3592426568055715474514499874203465878963470458984375p611 {- 1617885095325159 611 (-1.15511e+184)}
; Y = -1.8854345519077873039037740454659797251224517822265625p-84 {- 3987642718032873 -84 (-9.74747e-026)}
; -1.3592426568055715474514499874203465878963470458984375p611 = -1.8854345519077873039037740454659797251224517822265625p-84 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100010 #b0101101111110111010100111010011001001110110111100111)))
(assert (= y (fp #b1 #b01110101011 #b1110001010101011110101101011101100110001001111101001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
