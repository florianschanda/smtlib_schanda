(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2090965711602275067804157515638507902622222900390625 834 {- 941687239961649 834 (-1.38509e+251)}
; -1.2090965711602275067804157515638507902622222900390625 834 I == -1.2090965711602275067804157515638507902622222900390625 834
; [HW: -1.2090965711602275067804157515638507902622222900390625 834] 

; mpf : - 941687239961649 834
; mpfd: - 941687239961649 834 (-1.38509e+251) class: Neg. norm. non-zero
; hwf : - 941687239961649 834 (-1.38509e+251) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000001 #b0011010110000111010110100101011011010110110000110001)))
(assert (= r (fp #b1 #b11101000001 #b0011010110000111010110100101011011010110110000110001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
