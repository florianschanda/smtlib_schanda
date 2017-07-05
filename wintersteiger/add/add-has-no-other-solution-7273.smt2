(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.53007939457314368070228738361038267612457275390625p-91 {- 2387265363876388 -91 (-6.17994e-028)}
; Y = 1.774679296202013478733761076000519096851348876953125p-530 {+ 3488845389707026 -530 (5.0492e-160)}
; -1.53007939457314368070228738361038267612457275390625p-91 + 1.774679296202013478733761076000519096851348876953125p-530 == -1.5300793945731434586576824585790745913982391357421875p-91
; [HW: -1.5300793945731434586576824585790745913982391357421875p-91] 

; mpf : - 2387265363876387 -91
; mpfd: - 2387265363876387 -91 (-6.17994e-028) class: Neg. norm. non-zero
; hwf : - 2387265363876387 -91 (-6.17994e-028) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110100100 #b1000011110110011010010000111111111111001101000100100)))
(assert (= y (fp #b0 #b00111101101 #b1100011001010001011000011110001000010011011100010010)))
(assert (= r (fp #b1 #b01110100100 #b1000011110110011010010000111111111111001101000100011)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
