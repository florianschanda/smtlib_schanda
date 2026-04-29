(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4633092714499975617314930786960758268833160400390625 433 {- 2086559462259505 433 (-3.24582e+130)}
; -1.4633092714499975617314930786960758268833160400390625 433 I == -1.4633092714499975617314930786960758268833160400390625 433
; [HW: -1.4633092714499975617314930786960758268833160400390625 433] 

; mpf : - 2086559462259505 433
; mpfd: - 2086559462259505 433 (-3.24582e+130) class: Neg. norm. non-zero
; hwf : - 2086559462259505 433 (-3.24582e+130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110000 #b0111011010011011011011111011100011001111101100110001)))
(assert (= r (fp #b1 #b10110110000 #b0111011010011011011011111011100011001111101100110001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
