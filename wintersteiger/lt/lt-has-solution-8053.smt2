(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.679739238572457882270327900187112390995025634765625p514 {+ 3061273381544026 514 (9.00865e+154)}
; Y = 1.53384598983211706269003116176463663578033447265625p-278 {+ 2404228600881156 -278 (3.15822e-084)}
; 1.679739238572457882270327900187112390995025634765625p514 < 1.53384598983211706269003116176463663578033447265625p-278 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000000001 #b1010111000000011011001000000011101111010000001011010)))
(assert (= y (fp #b0 #b01011101001 #b1000100010101010001000010111101101101110000000000100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
