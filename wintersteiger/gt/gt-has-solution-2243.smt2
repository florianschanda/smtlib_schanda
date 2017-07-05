(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4446055020995858253485266686766408383846282958984375p-102 {+ 2002325173582567 -102 (2.84898e-031)}
; Y = 1.3884430933281051157024421627284027636051177978515625p-444 {+ 1749392170367097 -444 (3.0564e-134)}
; 1.4446055020995858253485266686766408383846282958984375p-102 > 1.3884430933281051157024421627284027636051177978515625p-444 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011001 #b0111000111010001101010101000101100100011101011100111)))
(assert (= y (fp #b0 #b01001000011 #b0110001101110001000000011010111000110011100001111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
