(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0700968256427698666044534547836519777774810791015625 653 {- 315688037844633 653 (-3.99954e+196)}
; -1.0700968256427698666044534547836519777774810791015625 653 I == -1.0700968256427698666044534547836519777774810791015625 653
; [HW: -1.0700968256427698666044534547836519777774810791015625 653] 

; mpf : - 315688037844633 653
; mpfd: - 315688037844633 653 (-3.99954e+196) class: Neg. norm. non-zero
; hwf : - 315688037844633 653 (-3.99954e+196) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010001100 #b0001000111110001110111011001010110110000011010011001)))
(assert (= r (fp #b1 #b11010001100 #b0001000111110001110111011001010110110000011010011001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
