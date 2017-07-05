(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0225147713172628716193912623566575348377227783203125p-853 {- 101397515714757 -853 (-1.70248e-257)}
; -1.0225147713172628716193912623566575348377227783203125p-853 | == 1.0225147713172628716193912623566575348377227783203125p-853
; [HW: 1.0225147713172628716193912623566575348377227783203125p-853] 

; mpf : + 101397515714757 -853
; mpfd: + 101397515714757 -853 (1.70248e-257) class: Pos. norm. non-zero
; hwf : + 101397515714757 -853 (1.70248e-257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010101010 #b0000010111000011100001110010111001111100000011000101)))
(assert (= r (fp #b0 #b00010101010 #b0000010111000011100001110010111001111100000011000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
