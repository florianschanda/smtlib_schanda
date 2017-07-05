(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3121224377509379532824596026330254971981048583984375p585 {+ 1405674494349095 585 (1.66158e+176)}
; 1.3121224377509379532824596026330254971981048583984375p585 | == 1.3121224377509379532824596026330254971981048583984375p585
; [HW: 1.3121224377509379532824596026330254971981048583984375p585] 

; mpf : + 1405674494349095 585
; mpfd: + 1405674494349095 585 (1.66158e+176) class: Pos. norm. non-zero
; hwf : + 1405674494349095 585 (1.66158e+176) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001000 #b0100111111100111010000011000111001111100111100100111)))
(assert (= r (fp #b0 #b11001001000 #b0100111111100111010000011000111001111100111100100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
