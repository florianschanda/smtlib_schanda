(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9379978715910006759060024705831892788410186767578125p440 {+ 4224366864971549 440 (5.50239e+132)}
; 1.9379978715910006759060024705831892788410186767578125p440 | == 1.9379978715910006759060024705831892788410186767578125p440
; [HW: 1.9379978715910006759060024705831892788410186767578125p440] 

; mpf : + 4224366864971549 440
; mpfd: + 4224366864971549 440 (5.50239e+132) class: Pos. norm. non-zero
; hwf : + 4224366864971549 440 (5.50239e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110110111 #b1111000000100000101000001110011000110011011100011101)))
(assert (= r (fp #b0 #b10110110111 #b1111000000100000101000001110011000110011011100011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
