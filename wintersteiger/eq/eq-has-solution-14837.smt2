(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9152156416821795037463971311808563768863677978515625p-509 {- 4121764822843513 -509 (-1.14275e-153)}
; Y = -1.8812049107763468835941012002876959741115570068359375p972 {- 3968594107809407 972 (-7.50917e+292)}
; -1.9152156416821795037463971311808563768863677978515625p-509 = -1.8812049107763468835941012002876959741115570068359375p972 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000010 #b1110101001001011100100101000000111010000000001111001)))
(assert (= y (fp #b1 #b11111001011 #b1110000110010110101001010010000011011011111001111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
