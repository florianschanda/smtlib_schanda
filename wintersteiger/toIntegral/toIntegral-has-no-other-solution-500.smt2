(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2455475700727991483773848813143558800220489501953125 652 {- 1105847945081589 652 (-2.32765e+196)}
; -1.2455475700727991483773848813143558800220489501953125 652 I == -1.2455475700727991483773848813143558800220489501953125 652
; [HW: -1.2455475700727991483773848813143558800220489501953125 652] 

; mpf : - 1105847945081589 652
; mpfd: - 1105847945081589 652 (-2.32765e+196) class: Neg. norm. non-zero
; hwf : - 1105847945081589 652 (-2.32765e+196) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010001011 #b0011111011011100001101001001111100010011001011110101)))
(assert (= r (fp #b1 #b11010001011 #b0011111011011100001101001001111100010011001011110101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
