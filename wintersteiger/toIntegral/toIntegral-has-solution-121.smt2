(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3370574315892664873928197266650386154651641845703125 854 {- 1517971723307877 854 (-1.60608e+257)}
; -1.3370574315892664873928197266650386154651641845703125 854 I == -1.3370574315892664873928197266650386154651641845703125 854
; [HW: -1.3370574315892664873928197266650386154651641845703125 854] 

; mpf : - 1517971723307877 854
; mpfd: - 1517971723307877 854 (-1.60608e+257) class: Neg. norm. non-zero
; hwf : - 1517971723307877 854 (-1.60608e+257) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010101 #b0101011001001001011001010101010110001100101101100101)))
(assert (= r (fp #b1 #b11101010101 #b0101011001001001011001010101010110001100101101100101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
