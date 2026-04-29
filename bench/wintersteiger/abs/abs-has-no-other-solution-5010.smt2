(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0544021602553865779583475159597583115100860595703125p-355 {- 245005548654309 -355 (-1.43667e-107)}
; -1.0544021602553865779583475159597583115100860595703125p-355 | == 1.0544021602553865779583475159597583115100860595703125p-355
; [HW: 1.0544021602553865779583475159597583115100860595703125p-355] 

; mpf : + 245005548654309 -355
; mpfd: + 245005548654309 -355 (1.43667e-107) class: Pos. norm. non-zero
; hwf : + 245005548654309 -355 (1.43667e-107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010011100 #b0000110111101101010011001100101100100000111011100101)))
(assert (= r (fp #b0 #b01010011100 #b0000110111101101010011001100101100100000111011100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
