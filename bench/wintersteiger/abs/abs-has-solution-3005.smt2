(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0006138162759758980513424830860458314418792724609375p-180 {- 2764382751759 -180 (-6.52931e-055)}
; -1.0006138162759758980513424830860458314418792724609375p-180 | == 1.0006138162759758980513424830860458314418792724609375p-180
; [HW: 1.0006138162759758980513424830860458314418792724609375p-180] 

; mpf : + 2764382751759 -180
; mpfd: + 2764382751759 -180 (6.52931e-055) class: Pos. norm. non-zero
; hwf : + 2764382751759 -180 (6.52931e-055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001011 #b0000000000101000001110100010000011010100110000001111)))
(assert (= r (fp #b0 #b01101001011 #b0000000000101000001110100010000011010100110000001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
