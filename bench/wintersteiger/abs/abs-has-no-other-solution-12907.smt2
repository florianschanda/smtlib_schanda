(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4127979320447316968767381695215590298175811767578125p-970 {+ 1859076612935965 -970 (1.41574e-292)}
; 1.4127979320447316968767381695215590298175811767578125p-970 | == 1.4127979320447316968767381695215590298175811767578125p-970
; [HW: 1.4127979320447316968767381695215590298175811767578125p-970] 

; mpf : + 1859076612935965 -970
; mpfd: + 1859076612935965 -970 (1.41574e-292) class: Pos. norm. non-zero
; hwf : + 1859076612935965 -970 (1.41574e-292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110101 #b0110100110101101001000000001000111111101000100011101)))
(assert (= r (fp #b0 #b00000110101 #b0110100110101101001000000001000111111101000100011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
