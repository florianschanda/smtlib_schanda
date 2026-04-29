(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.650892513968841068816573169897310435771942138671875 204 {+ 2931359283368318 204 (4.24461e+061)}
; 1.650892513968841068816573169897310435771942138671875 204 I == 1.650892513968841068816573169897310435771942138671875 204
; [HW: 1.650892513968841068816573169897310435771942138671875 204] 

; mpf : + 2931359283368318 204
; mpfd: + 2931359283368318 204 (4.24461e+061) class: Pos. norm. non-zero
; hwf : + 2931359283368318 204 (4.24461e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001011 #b1010011010100000111001000100110010110101000101111110)))
(assert (= r (fp #b0 #b10011001011 #b1010011010100000111001000100110010110101000101111110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
