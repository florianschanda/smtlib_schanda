(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6138194871553845910483460102113895118236541748046875 130 {- 2764397213625739 130 (-2.19662e+039)}
; -1.6138194871553845910483460102113895118236541748046875 130 I == -1.6138194871553845910483460102113895118236541748046875 130
; [HW: -1.6138194871553845910483460102113895118236541748046875 130] 

; mpf : - 2764397213625739 130
; mpfd: - 2764397213625739 130 (-2.19662e+039) class: Neg. norm. non-zero
; hwf : - 2764397213625739 130 (-2.19662e+039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000001 #b1001110100100011010001100001111011111010110110001011)))
(assert (= r (fp #b1 #b10010000001 #b1001110100100011010001100001111011111010110110001011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
