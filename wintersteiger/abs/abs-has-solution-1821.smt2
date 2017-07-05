(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3074734049871794550057302330969832837581634521484375p-225 {+ 1384737112126599 -225 (2.42484e-068)}
; 1.3074734049871794550057302330969832837581634521484375p-225 | == 1.3074734049871794550057302330969832837581634521484375p-225
; [HW: 1.3074734049871794550057302330969832837581634521484375p-225] 

; mpf : + 1384737112126599 -225
; mpfd: + 1384737112126599 -225 (2.42484e-068) class: Pos. norm. non-zero
; hwf : + 1384737112126599 -225 (2.42484e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011110 #b0100111010110110100100111011101011001111010010000111)))
(assert (= r (fp #b0 #b01100011110 #b0100111010110110100100111011101011001111010010000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
