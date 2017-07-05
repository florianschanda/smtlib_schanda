(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.71229197633638552389356846106238663196563720703125p18 {+ 3207877879207540 18 (448867)}
; 1.71229197633638552389356846106238663196563720703125p18 | == 1.71229197633638552389356846106238663196563720703125p18
; [HW: 1.71229197633638552389356846106238663196563720703125p18] 

; mpf : + 3207877879207540 18
; mpfd: + 3207877879207540 18 (448867) class: Pos. norm. non-zero
; hwf : + 3207877879207540 18 (448867) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010001 #b1011011001011000110001000101011110010001011001110100)))
(assert (= r (fp #b0 #b10000010001 #b1011011001011000110001000101011110010001011001110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
