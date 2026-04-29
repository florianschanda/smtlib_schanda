(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.238676018399606615361108197248540818691253662109375p-74 {+ 1074901227526742 -74 (6.5575e-023)}
; 1.238676018399606615361108197248540818691253662109375p-74 | == 1.238676018399606615361108197248540818691253662109375p-74
; [HW: 1.238676018399606615361108197248540818691253662109375p-74] 

; mpf : + 1074901227526742 -74
; mpfd: + 1074901227526742 -74 (6.5575e-023) class: Pos. norm. non-zero
; hwf : + 1074901227526742 -74 (6.5575e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110101 #b0011110100011001110111110001110101011101101001010110)))
(assert (= r (fp #b0 #b01110110101 #b0011110100011001110111110001110101011101101001010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
