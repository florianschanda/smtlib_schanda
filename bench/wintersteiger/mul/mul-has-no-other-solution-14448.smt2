(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4378301565329751898758559036650694906711578369140625p-518 {+ 1971811729813473 -518 (1.6756e-156)}
; Y = -1.997158381436087370985887901042588055133819580078125p-948 {- 4490802115064930 -948 (-8.39415e-286)}
; 1.4378301565329751898758559036650694906711578369140625p-518 * -1.997158381436087370985887901042588055133819580078125p-948 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111111001 #b0111000000010101101000110001101110000010111111100001)))
(assert (= y (fp #b1 #b00001001011 #b1111111101000101110001011000110100110011010001100010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
