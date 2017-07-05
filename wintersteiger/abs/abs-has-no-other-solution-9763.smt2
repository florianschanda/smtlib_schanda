(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8154390691029285154201033947174437344074249267578125p424 {+ 3672411087755293 424 (7.86502e+127)}
; 1.8154390691029285154201033947174437344074249267578125p424 | == 1.8154390691029285154201033947174437344074249267578125p424
; [HW: 1.8154390691029285154201033947174437344074249267578125p424] 

; mpf : + 3672411087755293 424
; mpfd: + 3672411087755293 424 (7.86502e+127) class: Pos. norm. non-zero
; hwf : + 3672411087755293 424 (7.86502e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100111 #b1101000011000000100111010110010110101101100000011101)))
(assert (= r (fp #b0 #b10110100111 #b1101000011000000100111010110010110101101100000011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
