(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3346972100707505948236075710156001150608062744140625 595 {- 1507342230556577 595 (-1.73073e+179)}
; -1.3346972100707505948236075710156001150608062744140625 595 I == -1.3346972100707505948236075710156001150608062744140625 595
; [HW: -1.3346972100707505948236075710156001150608062744140625 595] 

; mpf : - 1507342230556577 595
; mpfd: - 1507342230556577 595 (-1.73073e+179) class: Neg. norm. non-zero
; hwf : - 1507342230556577 595 (-1.73073e+179) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010010 #b0101010110101110101101110110001101010000111110100001)))
(assert (= r (fp #b1 #b11001010010 #b0101010110101110101101110110001101010000111110100001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
