(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.79421137943762420974280757945962250232696533203125 209 {- 3576810072488692 209 (-1.47619e+063)}
; -1.79421137943762420974280757945962250232696533203125 209 I == -1.79421137943762420974280757945962250232696533203125 209
; [HW: -1.79421137943762420974280757945962250232696533203125 209] 

; mpf : - 3576810072488692 209
; mpfd: - 3576810072488692 209 (-1.47619e+063) class: Neg. norm. non-zero
; hwf : - 3576810072488692 209 (-1.47619e+063) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010000 #b1100101101010001011011111101110011001011101011110100)))
(assert (= r (fp #b1 #b10011010000 #b1100101101010001011011111101110011001011101011110100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
