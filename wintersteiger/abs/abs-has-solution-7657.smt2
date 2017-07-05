(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.894523580588549638292761301272548735141754150390625p-225 {+ 4028576064212714 -225 (3.51359e-068)}
; 1.894523580588549638292761301272548735141754150390625p-225 | == 1.894523580588549638292761301272548735141754150390625p-225
; [HW: 1.894523580588549638292761301272548735141754150390625p-225] 

; mpf : + 4028576064212714 -225
; mpfd: + 4028576064212714 -225 (3.51359e-068) class: Pos. norm. non-zero
; hwf : + 4028576064212714 -225 (3.51359e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011110 #b1110010011111111011111110101010000100000111011101010)))
(assert (= r (fp #b0 #b01100011110 #b1110010011111111011111110101010000100000111011101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
