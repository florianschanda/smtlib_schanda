(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.527956026920957555148561368696391582489013671875p-1022 {+ 2377702566109232 -1023 (1.17474e-308)}
; 0.527956026920957555148561368696391582489013671875p-1022 | == 0.527956026920957555148561368696391582489013671875p-1022
; [HW: 0.527956026920957555148561368696391582489013671875p-1022] 

; mpf : + 2377702566109232 -1023
; mpfd: + 2377702566109232 -1023 (1.17474e-308) class: Pos. denorm.
; hwf : + 2377702566109232 -1023 (1.17474e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1000011100101000001000000100110101011010000000110000)))
(assert (= r (fp #b0 #b00000000000 #b1000011100101000001000000100110101011010000000110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
