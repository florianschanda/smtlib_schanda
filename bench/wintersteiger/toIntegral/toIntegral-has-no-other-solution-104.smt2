(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5450870234171329986594400907051749527454376220703125 97 {- 2454853715545893 97 (-2.44829e+029)}
; -1.5450870234171329986594400907051749527454376220703125 97 I == -1.5450870234171329986594400907051749527454376220703125 97
; [HW: -1.5450870234171329986594400907051749527454376220703125 97] 

; mpf : - 2454853715545893 97
; mpfd: - 2454853715545893 97 (-2.44829e+029) class: Neg. norm. non-zero
; hwf : - 2454853715545893 97 (-2.44829e+029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100000 #b1000101110001010110100101011101100001100111100100101)))
(assert (= r (fp #b1 #b10001100000 #b1000101110001010110100101011101100001100111100100101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
