(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9169288897682310590653287363238632678985595703125p284 {+ 4129480606285448 284 (5.95833e+085)}
; 1.9169288897682310590653287363238632678985595703125p284 | == 1.9169288897682310590653287363238632678985595703125p284
; [HW: 1.9169288897682310590653287363238632678985595703125p284] 

; mpf : + 4129480606285448 284
; mpfd: + 4129480606285448 284 (5.95833e+085) class: Pos. norm. non-zero
; hwf : + 4129480606285448 284 (5.95833e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011011 #b1110101010111011110110100000101001001111111010001000)))
(assert (= r (fp #b0 #b10100011011 #b1110101010111011110110100000101001001111111010001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
