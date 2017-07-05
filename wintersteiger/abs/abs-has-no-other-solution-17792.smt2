(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.174073685180460291377357862074859440326690673828125p-470 {- 783958183713730 -470 (-3.85121e-142)}
; -1.174073685180460291377357862074859440326690673828125p-470 | == 1.174073685180460291377357862074859440326690673828125p-470
; [HW: 1.174073685180460291377357862074859440326690673828125p-470] 

; mpf : + 783958183713730 -470
; mpfd: + 783958183713730 -470 (3.85121e-142) class: Pos. norm. non-zero
; hwf : + 783958183713730 -470 (3.85121e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101001 #b0010110010010000000101111101000011110001101111000010)))
(assert (= r (fp #b0 #b01000101001 #b0010110010010000000101111101000011110001101111000010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
