(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4759119082949114787339794929721392691135406494140625p-930 {- 2143316692858145 -930 (-1.62616e-280)}
; -1.4759119082949114787339794929721392691135406494140625p-930 | == 1.4759119082949114787339794929721392691135406494140625p-930
; [HW: 1.4759119082949114787339794929721392691135406494140625p-930] 

; mpf : + 2143316692858145 -930
; mpfd: + 2143316692858145 -930 (1.62616e-280) class: Pos. norm. non-zero
; hwf : + 2143316692858145 -930 (1.62616e-280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011101 #b0111100111010101010111001110000111100111010100100001)))
(assert (= r (fp #b0 #b00001011101 #b0111100111010101010111001110000111100111010100100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
