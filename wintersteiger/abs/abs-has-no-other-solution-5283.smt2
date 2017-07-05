(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7968129563735117937284258005092851817607879638671875p877 {- 3588526533407731 877 (-1.81054e+264)}
; -1.7968129563735117937284258005092851817607879638671875p877 | == 1.7968129563735117937284258005092851817607879638671875p877
; [HW: 1.7968129563735117937284258005092851817607879638671875p877] 

; mpf : + 3588526533407731 877
; mpfd: + 3588526533407731 877 (1.81054e+264) class: Pos. norm. non-zero
; hwf : + 3588526533407731 877 (1.81054e+264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101100 #b1100101111111011111011110001010010100111001111110011)))
(assert (= r (fp #b0 #b11101101100 #b1100101111111011111011110001010010100111001111110011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
