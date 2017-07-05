(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2031728287586587189395004315883852541446685791015625p-561 {- 915009075889305 -561 (-1.59404e-169)}
; -1.2031728287586587189395004315883852541446685791015625p-561 | == 1.2031728287586587189395004315883852541446685791015625p-561
; [HW: 1.2031728287586587189395004315883852541446685791015625p-561] 

; mpf : + 915009075889305 -561
; mpfd: + 915009075889305 -561 (1.59404e-169) class: Pos. norm. non-zero
; hwf : + 915009075889305 -561 (1.59404e-169) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111001110 #b0011010000000011001000100110111011110100010010011001)))
(assert (= r (fp #b0 #b00111001110 #b0011010000000011001000100110111011110100010010011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
