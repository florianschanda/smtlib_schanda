(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.08872205359590612516740293358452618122100830078125 606 {- 399568607514068 606 (-2.89131e+182)}
; -1.08872205359590612516740293358452618122100830078125 606 I == -1.08872205359590612516740293358452618122100830078125 606
; [HW: -1.08872205359590612516740293358452618122100830078125 606] 

; mpf : - 399568607514068 606
; mpfd: - 399568607514068 606 (-2.89131e+182) class: Neg. norm. non-zero
; hwf : - 399568607514068 606 (-2.89131e+182) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011101 #b0001011010110110011111010000111010100000110111010100)))
(assert (= r (fp #b1 #b11001011101 #b0001011010110110011111010000111010100000110111010100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
