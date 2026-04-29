(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9797655652038301798967268041451461613178253173828125p-1011 {- 4412471834362413 -1011 (-9.0217e-305)}
; -1.9797655652038301798967268041451461613178253173828125p-1011 | == 1.9797655652038301798967268041451461613178253173828125p-1011
; [HW: 1.9797655652038301798967268041451461613178253173828125p-1011] 

; mpf : + 4412471834362413 -1011
; mpfd: + 4412471834362413 -1011 (9.0217e-305) class: Pos. norm. non-zero
; hwf : + 4412471834362413 -1011 (9.0217e-305) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001100 #b1111101011010001111010101000010001001100001000101101)))
(assert (= r (fp #b0 #b00000001100 #b1111101011010001111010101000010001001100001000101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
