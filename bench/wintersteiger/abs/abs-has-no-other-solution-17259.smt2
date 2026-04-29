(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1172031438481611065327570031513459980487823486328125p-74 {- 527836034961229 -74 (-5.91442e-023)}
; -1.1172031438481611065327570031513459980487823486328125p-74 | == 1.1172031438481611065327570031513459980487823486328125p-74
; [HW: 1.1172031438481611065327570031513459980487823486328125p-74] 

; mpf : + 527836034961229 -74
; mpfd: + 527836034961229 -74 (5.91442e-023) class: Pos. norm. non-zero
; hwf : + 527836034961229 -74 (5.91442e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110110101 #b0001111000000001000001100111010111010000111101001101)))
(assert (= r (fp #b0 #b01110110101 #b0001111000000001000001100111010111010000111101001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
