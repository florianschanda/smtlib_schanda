(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2959751174440807819365772957098670303821563720703125p581 {+ 1332953428632101 581 (1.02571e+175)}
; 1.2959751174440807819365772957098670303821563720703125p581 | == 1.2959751174440807819365772957098670303821563720703125p581
; [HW: 1.2959751174440807819365772957098670303821563720703125p581] 

; mpf : + 1332953428632101 581
; mpfd: + 1332953428632101 581 (1.02571e+175) class: Pos. norm. non-zero
; hwf : + 1332953428632101 581 (1.02571e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000100 #b0100101111000101000001100111100111011010001000100101)))
(assert (= r (fp #b0 #b11001000100 #b0100101111000101000001100111100111011010001000100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
