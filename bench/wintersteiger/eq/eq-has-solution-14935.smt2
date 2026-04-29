(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.463673065513722892916348428116180002689361572265625p-314 {+ 2088197845069338 -314 (4.38556e-095)}
; Y = 1.10766536252422564956532369251362979412078857421875p-961 {+ 484881686544812 -961 (5.68307e-290)}
; 1.463673065513722892916348428116180002689361572265625p-314 = 1.10766536252422564956532369251362979412078857421875p-961 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000101 #b0111011010110011010001110010110001101010111000011010)))
(assert (= y (fp #b0 #b00000111110 #b0001101110001111111101010000101011110100000110101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
