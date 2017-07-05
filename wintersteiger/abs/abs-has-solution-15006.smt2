(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0003223300407879658990850657573901116847991943359375p-133 {+ 1451645451583 -133 (9.18651e-041)}
; 1.0003223300407879658990850657573901116847991943359375p-133 | == 1.0003223300407879658990850657573901116847991943359375p-133
; [HW: 1.0003223300407879658990850657573901116847991943359375p-133] 

; mpf : + 1451645451583 -133
; mpfd: + 1451645451583 -133 (9.18651e-041) class: Pos. norm. non-zero
; hwf : + 1451645451583 -133 (9.18651e-041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111010 #b0000000000010101000111111100110011111011110100111111)))
(assert (= r (fp #b0 #b01101111010 #b0000000000010101000111111100110011111011110100111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
