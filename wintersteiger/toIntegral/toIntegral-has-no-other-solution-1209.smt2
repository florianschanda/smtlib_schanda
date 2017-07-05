(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.702141586975546516669055563397705554962158203125 103 {- 3162164589464400 103 (-1.72618e+031)}
; -1.702141586975546516669055563397705554962158203125 103 I == -1.702141586975546516669055563397705554962158203125 103
; [HW: -1.702141586975546516669055563397705554962158203125 103] 

; mpf : - 3162164589464400 103
; mpfd: - 3162164589464400 103 (-1.72618e+031) class: Neg. norm. non-zero
; hwf : - 3162164589464400 103 (-1.72618e+031) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100110 #b1011001110111111100011010001000100111000101101010000)))
(assert (= r (fp #b1 #b10001100110 #b1011001110111111100011010001000100111000101101010000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
