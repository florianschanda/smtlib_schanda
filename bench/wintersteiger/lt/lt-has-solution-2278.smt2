(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.070204055175042245906524840393103659152984619140625p346 {+ 316170956726218 346 (1.53407e+104)}
; Y = 1.216934679187412715606342317187227308750152587890625p528 {+ 976986940352170 528 (1.06931e+159)}
; 1.070204055175042245906524840393103659152984619140625p346 < 1.216934679187412715606342317187227308750152587890625p528 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011001 #b0001000111111000111001001001100100000101111111001010)))
(assert (= y (fp #b0 #b11000001111 #b0011011110001001000001111111100001111010011010101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
