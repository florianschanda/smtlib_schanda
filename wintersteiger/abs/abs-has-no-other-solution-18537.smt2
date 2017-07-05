(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4023460377491143713513110924395732581615447998046875p-315 {+ 1812005465680907 -315 (2.10091e-095)}
; 1.4023460377491143713513110924395732581615447998046875p-315 | == 1.4023460377491143713513110924395732581615447998046875p-315
; [HW: 1.4023460377491143713513110924395732581615447998046875p-315] 

; mpf : + 1812005465680907 -315
; mpfd: + 1812005465680907 -315 (2.10091e-095) class: Pos. norm. non-zero
; hwf : + 1812005465680907 -315 (2.10091e-095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000100 #b0110011100000000001001100110000111001110110000001011)))
(assert (= r (fp #b0 #b01011000100 #b0110011100000000001001100110000111001110110000001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
