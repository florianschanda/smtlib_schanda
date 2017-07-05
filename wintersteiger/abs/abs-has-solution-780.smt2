(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4735251059968110798337193045881576836109161376953125p-569 {+ 2132567490917813 -569 (7.62588e-172)}
; 1.4735251059968110798337193045881576836109161376953125p-569 | == 1.4735251059968110798337193045881576836109161376953125p-569
; [HW: 1.4735251059968110798337193045881576836109161376953125p-569] 

; mpf : + 2132567490917813 -569
; mpfd: + 2132567490917813 -569 (7.62588e-172) class: Pos. norm. non-zero
; hwf : + 2132567490917813 -569 (7.62588e-172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000110 #b0111100100111000111100001111110000010111010110110101)))
(assert (= r (fp #b0 #b00111000110 #b0111100100111000111100001111110000010111010110110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
