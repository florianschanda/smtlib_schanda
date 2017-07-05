(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1733579775772426945223969596554525196552276611328125p850 {+ 780734923218573 850 (8.809e+255)}
; 1.1733579775772426945223969596554525196552276611328125p850 | == 1.1733579775772426945223969596554525196552276611328125p850
; [HW: 1.1733579775772426945223969596554525196552276611328125p850] 

; mpf : + 780734923218573 850
; mpfd: + 780734923218573 850 (8.809e+255) class: Pos. norm. non-zero
; hwf : + 780734923218573 850 (8.809e+255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101010001 #b0010110001100001001100000011110000110001111010001101)))
(assert (= r (fp #b0 #b11101010001 #b0010110001100001001100000011110000110001111010001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
