(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.82415829023192177515966250211931765079498291015625p-582 {- 3711678968782788 -582 (-1.1524e-175)}
; Y = 1.5945646197588676518108741220203228294849395751953125p-537 {+ 2677680999993717 -537 (3.54433e-162)}
; -1.82415829023192177515966250211931765079498291015625p-582 * 1.5945646197588676518108741220203228294849395751953125p-537 == -zero
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
(assert (= x (fp #b1 #b00110111001 #b1101001011111100000010011010011101000101111111000100)))
(assert (= y (fp #b0 #b00111100110 #b1001100000110101011000110000110100111001000101110101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
