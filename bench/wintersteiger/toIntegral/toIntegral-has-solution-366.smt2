(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4597583510900877801219621687778271734714508056640625 13 {- 2070567538649793 13 (-11958.3)}
; -1.4597583510900877801219621687778271734714508056640625 13 I == -1.459716796875 13
; [HW: -1.459716796875 13] 

; mpf : - 2070380395102208 13
; mpfd: - 2070380395102208 13 (-11958) class: Neg. norm. non-zero
; hwf : - 2070380395102208 13 (-11958) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001100 #b0111010110110010101110010010100111111110101011000001)))
(assert (= r (fp #b1 #b10000001100 #b0111010110110000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
