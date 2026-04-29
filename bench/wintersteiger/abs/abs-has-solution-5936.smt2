(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.19951704900830780076148585067130625247955322265625p788 {- 898544907567876 788 (-1.95273e+237)}
; -1.19951704900830780076148585067130625247955322265625p788 | == 1.19951704900830780076148585067130625247955322265625p788
; [HW: 1.19951704900830780076148585067130625247955322265625p788] 

; mpf : + 898544907567876 788
; mpfd: + 898544907567876 788 (1.95273e+237) class: Pos. norm. non-zero
; hwf : + 898544907567876 788 (1.95273e+237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010011 #b0011001100010011100011001010000001111100001100000100)))
(assert (= r (fp #b0 #b11100010011 #b0011001100010011100011001010000001111100001100000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
