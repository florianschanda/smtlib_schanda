(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7062638158790195408442968982853926718235015869140625 62 {- 3180729458018017 62 (-7.86875e+018)}
; -1.7062638158790195408442968982853926718235015869140625 62 I == -1.7062638158790195408442968982853926718235015869140625 62
; [HW: -1.7062638158790195408442968982853926718235015869140625 62] 

; mpf : - 3180729458018017 62
; mpfd: - 3180729458018017 62 (-7.86875e+018) class: Neg. norm. non-zero
; hwf : - 3180729458018017 62 (-7.86875e+018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111101 #b1011010011001101101101001001011110001100011011100001)))
(assert (= r (fp #b1 #b10000111101 #b1011010011001101101101001001011110001100011011100001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
