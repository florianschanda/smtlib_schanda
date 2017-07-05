(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.18875609069868826139781958772800862789154052734375 -635 {- 850081859734524 -635 (-8.33769e-192)}
; -1.18875609069868826139781958772800862789154052734375 -635 I == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110000100 #b0011000001010010010100011011010001111000101111111100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
