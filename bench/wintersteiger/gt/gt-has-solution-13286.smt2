(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7264861400708826355554492693045176565647125244140625p-840 {+ 3271802709713057 -840 (2.35487e-253)}
; Y = -1.17509074496034227053087306558154523372650146484375p977 {- 788538613759420 977 (-1.50099e+294)}
; 1.7264861400708826355554492693045176565647125244140625p-840 > -1.17509074496034227053087306558154523372650146484375p977 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010110111 #b1011100111111010111111101110010010011010000010100001)))
(assert (= y (fp #b1 #b11111010000 #b0010110011010010101111110011111101101111110110111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
