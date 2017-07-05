(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.221807412248017588041193448589183390140533447265625 762 {- 998931779148186 762 (-2.96387e+229)}
; -1.221807412248017588041193448589183390140533447265625 762 I == -1.221807412248017588041193448589183390140533447265625 762
; [HW: -1.221807412248017588041193448589183390140533447265625 762] 

; mpf : - 998931779148186 762
; mpfd: - 998931779148186 762 (-2.96387e+229) class: Neg. norm. non-zero
; hwf : - 998931779148186 762 (-2.96387e+229) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111001 #b0011100011001000010111101101110110011101100110011010)))
(assert (= r (fp #b1 #b11011111001 #b0011100011001000010111101101110110011101100110011010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
