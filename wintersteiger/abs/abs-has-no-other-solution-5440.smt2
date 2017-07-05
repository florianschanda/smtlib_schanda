(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4282313532909001185799979793955571949481964111328125p-590 {- 1928582563109261 -590 (-3.52453e-178)}
; -1.4282313532909001185799979793955571949481964111328125p-590 | == 1.4282313532909001185799979793955571949481964111328125p-590
; [HW: 1.4282313532909001185799979793955571949481964111328125p-590] 

; mpf : + 1928582563109261 -590
; mpfd: + 1928582563109261 -590 (3.52453e-178) class: Pos. norm. non-zero
; hwf : + 1928582563109261 -590 (3.52453e-178) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110001 #b0110110110100000100100011110100110000001100110001101)))
(assert (= r (fp #b0 #b00110110001 #b0110110110100000100100011110100110000001100110001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
