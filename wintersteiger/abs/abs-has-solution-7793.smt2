(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6237019606988589703888692383770830929279327392578125p612 {+ 2808903917793629 612 (2.75971e+184)}
; 1.6237019606988589703888692383770830929279327392578125p612 | == 1.6237019606988589703888692383770830929279327392578125p612
; [HW: 1.6237019606988589703888692383770830929279327392578125p612] 

; mpf : + 2808903917793629 612
; mpfd: + 2808903917793629 612 (2.75971e+184) class: Pos. norm. non-zero
; hwf : + 2808903917793629 612 (2.75971e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100011 #b1001111110101010111011101000001110100111000101011101)))
(assert (= r (fp #b0 #b11001100011 #b1001111110101010111011101000001110100111000101011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
