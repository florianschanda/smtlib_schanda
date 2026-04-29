(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9221693437166711415642339488840661942958831787109375p-550 {- 4153081512734895 -550 (-5.21548e-166)}
; -1.9221693437166711415642339488840661942958831787109375p-550 | == 1.9221693437166711415642339488840661942958831787109375p-550
; [HW: 1.9221693437166711415642339488840661942958831787109375p-550] 

; mpf : + 4153081512734895 -550
; mpfd: + 4153081512734895 -550 (5.21548e-166) class: Pos. norm. non-zero
; hwf : + 4153081512734895 -550 (5.21548e-166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011001 #b1110110000010011010010100100010010100011000010101111)))
(assert (= r (fp #b0 #b00111011001 #b1110110000010011010010100100010010100011000010101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
