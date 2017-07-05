(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.094451996543360561275903819478116929531097412109375 926 {- 425373976437078 926 (-6.2083e+278)}
; -1.094451996543360561275903819478116929531097412109375 926 I == -1.094451996543360561275903819478116929531097412109375 926
; [HW: -1.094451996543360561275903819478116929531097412109375 926] 

; mpf : - 425373976437078 926
; mpfd: - 425373976437078 926 (-6.2083e+278) class: Neg. norm. non-zero
; hwf : - 425373976437078 926 (-6.2083e+278) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011101 #b0001100000101110000000011000110000110010000101010110)))
(assert (= r (fp #b1 #b11110011101 #b0001100000101110000000011000110000110010000101010110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
