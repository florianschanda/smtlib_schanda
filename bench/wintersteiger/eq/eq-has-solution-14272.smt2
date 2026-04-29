(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1407330503126031917560112560749985277652740478515625p814 {- 633805312946553 814 (-1.24624e+245)}
; Y = -1.2375083593872222564868934568949043750762939453125p-390 {- 1069642558833672 -390 (-4.90738e-118)}
; -1.1407330503126031917560112560749985277652740478515625p814 = -1.2375083593872222564868934568949043750762939453125p-390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101101 #b0010010000000111000101001100100010001111000101111001)))
(assert (= y (fp #b1 #b01001111001 #b0011110011001101010110010000110000011000010000001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
