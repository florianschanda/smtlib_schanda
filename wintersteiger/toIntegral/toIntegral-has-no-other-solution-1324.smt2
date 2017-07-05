(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0882425312568695385806449849042110145092010498046875 505 {- 397409030886667 505 (-1.13992e+152)}
; -1.0882425312568695385806449849042110145092010498046875 505 I == -1.0882425312568695385806449849042110145092010498046875 505
; [HW: -1.0882425312568695385806449849042110145092010498046875 505] 

; mpf : - 397409030886667 505
; mpfd: - 397409030886667 505 (-1.13992e+152) class: Neg. norm. non-zero
; hwf : - 397409030886667 505 (-1.13992e+152) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111000 #b0001011010010111000100000000000111011101010100001011)))
(assert (= r (fp #b1 #b10111111000 #b0001011010010111000100000000000111011101010100001011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
