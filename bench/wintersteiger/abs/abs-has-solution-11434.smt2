(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 0.8108570196280837638624916507978923618793487548828125p-1022 {+ 3651775371447789 -1023 (1.80422e-308)}
; 0.8108570196280837638624916507978923618793487548828125p-1022 | == 0.8108570196280837638624916507978923618793487548828125p-1022
; [HW: 0.8108570196280837638624916507978923618793487548828125p-1022] 

; mpf : + 3651775371447789 -1023
; mpfd: + 3651775371447789 -1023 (1.80422e-308) class: Pos. denorm.
; hwf : + 3651775371447789 -1023 (1.80422e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1100111110010100010100110101110100001000110111101101)))
(assert (= r (fp #b0 #b00000000000 #b1100111110010100010100110101110100001000110111101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
