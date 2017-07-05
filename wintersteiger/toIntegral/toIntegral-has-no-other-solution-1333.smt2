(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8930666449170947540636689154780469834804534912109375 803 {- 4022014609265647 803 (-1.00984e+242)}
; -1.8930666449170947540636689154780469834804534912109375 803 I == -1.8930666449170947540636689154780469834804534912109375 803
; [HW: -1.8930666449170947540636689154780469834804534912109375 803] 

; mpf : - 4022014609265647 803
; mpfd: - 4022014609265647 803 (-1.00984e+242) class: Neg. norm. non-zero
; hwf : - 4022014609265647 803 (-1.00984e+242) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100100010 #b1110010010100000000001000000000100010001001111101111)))
(assert (= r (fp #b1 #b11100100010 #b1110010010100000000001000000000100010001001111101111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
