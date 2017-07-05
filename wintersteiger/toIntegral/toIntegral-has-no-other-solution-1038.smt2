(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8209206980580689982929243342368863523006439208984375 805 {- 3697098149875047 805 (-3.88542e+242)}
; -1.8209206980580689982929243342368863523006439208984375 805 I == -1.8209206980580689982929243342368863523006439208984375 805
; [HW: -1.8209206980580689982929243342368863523006439208984375 805] 

; mpf : - 3697098149875047 805
; mpfd: - 3697098149875047 805 (-3.88542e+242) class: Neg. norm. non-zero
; hwf : - 3697098149875047 805 (-3.88542e+242) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100100100 #b1101001000100111110110111101111011000100110101100111)))
(assert (= r (fp #b1 #b11100100100 #b1101001000100111110110111101111011000100110101100111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
