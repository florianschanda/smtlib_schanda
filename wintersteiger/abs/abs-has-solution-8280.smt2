(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 0.619085764751552414253410461242310702800750732421875p-1022 {+ 2788114419445470 -1023 (1.37751e-308)}
; 0.619085764751552414253410461242310702800750732421875p-1022 | == 0.619085764751552414253410461242310702800750732421875p-1022
; [HW: 0.619085764751552414253410461242310702800750732421875p-1022] 

; mpf : + 2788114419445470 -1023
; mpfd: + 2788114419445470 -1023 (1.37751e-308) class: Pos. denorm.
; hwf : + 2788114419445470 -1023 (1.37751e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1001111001111100011001111001100100000110111011011110)))
(assert (= r (fp #b0 #b00000000000 #b1001111001111100011001111001100100000110111011011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
