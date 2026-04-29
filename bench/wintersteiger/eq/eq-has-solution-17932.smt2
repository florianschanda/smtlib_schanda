(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.914556463377863781971655043889768421649932861328125p629 {- 4118796147677826 629 (-4.26516e+189)}
; Y = -1.2501041946631163970238276306190527975559234619140625p64 {- 1126369157888609 64 (-2.30604e+019)}
; -1.914556463377863781971655043889768421649932861328125p629 = -1.2501041946631163970238276306190527975559234619140625p64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001110100 #b1110101000100000010111110101010010001101101010000010)))
(assert (= y (fp #b1 #b10000111111 #b0100000000000110110101000001100010101011101001100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
