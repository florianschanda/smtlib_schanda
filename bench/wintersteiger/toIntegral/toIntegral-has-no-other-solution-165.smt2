(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.468571667710266925865880693891085684299468994140625 255 {- 2110259188096330 255 (-8.50245e+076)}
; -1.468571667710266925865880693891085684299468994140625 255 I == -1.468571667710266925865880693891085684299468994140625 255
; [HW: -1.468571667710266925865880693891085684299468994140625 255] 

; mpf : - 2110259188096330 255
; mpfd: - 2110259188096330 255 (-8.50245e+076) class: Neg. norm. non-zero
; hwf : - 2110259188096330 255 (-8.50245e+076) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111110 #b0111011111110100010100000001010010100101110101001010)))
(assert (= r (fp #b1 #b10011111110 #b0111011111110100010100000001010010100101110101001010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
