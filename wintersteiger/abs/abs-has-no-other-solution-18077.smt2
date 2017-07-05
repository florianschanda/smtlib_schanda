(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -0.0388455844041735165461659562424756586551666259765625p-1022 {- 174944959447625 -1023 (-8.64343e-310)}
; -0.0388455844041735165461659562424756586551666259765625p-1022 | == 0.0388455844041735165461659562424756586551666259765625p-1022
; [HW: 0.0388455844041735165461659562424756586551666259765625p-1022] 

; mpf : + 174944959447625 -1023
; mpfd: + 174944959447625 -1023 (8.64343e-310) class: Pos. denorm.
; hwf : + 174944959447625 -1023 (8.64343e-310) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000100111110001110010001100001010011100001001001001)))
(assert (= r (fp #b0 #b00000000000 #b0000100111110001110010001100001010011100001001001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
