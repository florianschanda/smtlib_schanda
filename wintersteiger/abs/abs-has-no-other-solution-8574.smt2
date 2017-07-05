(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4233998813045236619956313006696291267871856689453125p-816 {- 1906823547671765 -816 (-3.25725e-246)}
; -1.4233998813045236619956313006696291267871856689453125p-816 | == 1.4233998813045236619956313006696291267871856689453125p-816
; [HW: 1.4233998813045236619956313006696291267871856689453125p-816] 

; mpf : + 1906823547671765 -816
; mpfd: + 1906823547671765 -816 (3.25725e-246) class: Pos. norm. non-zero
; hwf : + 1906823547671765 -816 (3.25725e-246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011001111 #b0110110001100011111011110100001101010101010011010101)))
(assert (= r (fp #b0 #b00011001111 #b0110110001100011111011110100001101010101010011010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
