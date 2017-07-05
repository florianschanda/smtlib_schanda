(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6929427620861401404539492432377301156520843505859375p-815 {+ 3120736765120223 -815 (7.74811e-246)}
; 1.6929427620861401404539492432377301156520843505859375p-815 S == 1.84007758645451691137395755504257977008819580078125p-408
; [HW: 1.84007758645451691137395755504257977008819580078125p-408] 

; mpf : + 3783373105318868 -408
; mpfd: + 3783373105318868 -408 (2.78354e-123) class: Pos. norm. non-zero
; hwf : + 3783373105318868 -408 (2.78354e-123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010000 #b1011000101100100101100100110010100101000111011011111)))
(assert (= r (fp #b0 #b01001100111 #b1101011100001111010100110001111111101100101111010100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
