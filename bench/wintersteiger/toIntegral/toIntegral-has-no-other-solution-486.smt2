(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.051627479909423623638531353208236396312713623046875 861 {- 232509499282158 861 (-1.61692e+259)}
; -1.051627479909423623638531353208236396312713623046875 861 I == -1.051627479909423623638531353208236396312713623046875 861
; [HW: -1.051627479909423623638531353208236396312713623046875 861] 

; mpf : - 232509499282158 861
; mpfd: - 232509499282158 861 (-1.61692e+259) class: Neg. norm. non-zero
; hwf : - 232509499282158 861 (-1.61692e+259) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011100 #b0000110100110111011101010110000111001001001011101110)))
(assert (= r (fp #b1 #b11101011100 #b0000110100110111011101010110000111001001001011101110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
