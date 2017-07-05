(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.797923360504452006125575280748307704925537109375p-201 {- 3593527349038064 -201 (-5.59425e-061)}
; -zero > -1.797923360504452006125575280748307704925537109375p-201 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01100110110 #b1100110001000100101101001001001000010100101111110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
