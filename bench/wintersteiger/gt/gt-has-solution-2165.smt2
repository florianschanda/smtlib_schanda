(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3803157819716480592120433357194997370243072509765625p-757 {- 1712790013970633 -757 (-1.82084e-228)}
; Y = -1.6641165755980995566432056875783018767833709716796875p488 {- 2990915162394171 488 (-1.32991e+147)}
; -1.3803157819716480592120433357194997370243072509765625p-757 > -1.6641165755980995566432056875783018767833709716796875p488 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001010 #b0110000101011100011000000000010110111000100011001001)))
(assert (= y (fp #b1 #b10111100111 #b1010101000000011100010110011110011101100111000111011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
