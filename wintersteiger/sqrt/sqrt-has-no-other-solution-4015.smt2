(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.58615638710734341287889037630520761013031005859375p553 {+ 2639813686557468 553 (4.67664e+166)}
; 1.58615638710734341287889037630520761013031005859375p553 S == 1.781098754761983204986108830780722200870513916015625p276
; [HW: 1.781098754761983204986108830780722200870513916015625p276] 

; mpf : + 3517756060885626 276
; mpfd: + 3517756060885626 276 (2.16255e+083) class: Pos. norm. non-zero
; hwf : + 3517756060885626 276 (2.16255e+083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101000 #b1001011000001110010110000101000011110111101100011100)))
(assert (= r (fp #b0 #b10100010011 #b1100011111110110000101101000011010100110001001111010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
