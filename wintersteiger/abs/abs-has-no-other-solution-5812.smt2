(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.588771591114618519924306383472867310047149658203125p-421 {+ 2651591518350130 -421 (2.93382e-127)}
; 1.588771591114618519924306383472867310047149658203125p-421 | == 1.588771591114618519924306383472867310047149658203125p-421
; [HW: 1.588771591114618519924306383472867310047149658203125p-421] 

; mpf : + 2651591518350130 -421
; mpfd: + 2651591518350130 -421 (2.93382e-127) class: Pos. norm. non-zero
; hwf : + 2651591518350130 -421 (2.93382e-127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011010 #b1001011010111001101111000010100010100110101100110010)))
(assert (= r (fp #b0 #b01001011010 #b1001011010111001101111000010100010100110101100110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
