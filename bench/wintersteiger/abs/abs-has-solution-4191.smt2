(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6001593483792870831194932179641909897327423095703125p-712 {- 2702877417723877 -712 (-7.42688e-215)}
; -1.6001593483792870831194932179641909897327423095703125p-712 | == 1.6001593483792870831194932179641909897327423095703125p-712
; [HW: 1.6001593483792870831194932179641909897327423095703125p-712] 

; mpf : + 2702877417723877 -712
; mpfd: + 2702877417723877 -712 (7.42688e-215) class: Pos. norm. non-zero
; hwf : + 2702877417723877 -712 (7.42688e-215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100110111 #b1001100110100100000010110000010110101101011111100101)))
(assert (= r (fp #b0 #b00100110111 #b1001100110100100000010110000010110101101011111100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
