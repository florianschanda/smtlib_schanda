(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.67225756168181138860973078408278524875640869140625 532 {- 3027578904287204 532 (-2.35104e+160)}
; -1.67225756168181138860973078408278524875640869140625 532 I == -1.67225756168181138860973078408278524875640869140625 532
; [HW: -1.67225756168181138860973078408278524875640869140625 532] 

; mpf : - 3027578904287204 532
; mpfd: - 3027578904287204 532 (-2.35104e+160) class: Neg. norm. non-zero
; hwf : - 3027578904287204 532 (-2.35104e+160) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010011 #b1010110000011001000100100101000111101001011111100100)))
(assert (= r (fp #b1 #b11000010011 #b1010110000011001000100100101000111101001011111100100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
