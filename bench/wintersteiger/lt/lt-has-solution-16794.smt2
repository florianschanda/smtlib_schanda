(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1127060354304456613050433588796295225620269775390625p-652 {+ 507582859166961 -652 (5.9542e-197)}
; Y = -1.486423323423354592165424037375487387180328369140625p-164 {- 2190655898113738 -164 (-6.35658e-050)}
; 1.1127060354304456613050433588796295225620269775390625p-652 < -1.486423323423354592165424037375487387180328369140625p-164 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110011 #b0001110011011010010011011000000000111100010011110001)))
(assert (= y (fp #b1 #b01101011011 #b0111110010000110001111010010101000011101011011001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
