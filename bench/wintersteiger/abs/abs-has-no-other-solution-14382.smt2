(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.155939974023501459754470488405786454677581787109375p-647 {- 702291208904406 -647 (-1.97938e-195)}
; -1.155939974023501459754470488405786454677581787109375p-647 | == 1.155939974023501459754470488405786454677581787109375p-647
; [HW: 1.155939974023501459754470488405786454677581787109375p-647] 

; mpf : + 702291208904406 -647
; mpfd: + 702291208904406 -647 (1.97938e-195) class: Pos. norm. non-zero
; hwf : + 702291208904406 -647 (1.97938e-195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111000 #b0010011111101011101011101010000010010001111011010110)))
(assert (= r (fp #b0 #b00101111000 #b0010011111101011101011101010000010010001111011010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
