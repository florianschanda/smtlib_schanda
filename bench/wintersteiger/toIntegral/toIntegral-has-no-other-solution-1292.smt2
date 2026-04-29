(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.91178990462958520168967879726551473140716552734375 754 {- 4106336674729980 754 (-1.81158e+227)}
; -1.91178990462958520168967879726551473140716552734375 754 I == -1.91178990462958520168967879726551473140716552734375 754
; [HW: -1.91178990462958520168967879726551473140716552734375 754] 

; mpf : - 4106336674729980 754
; mpfd: - 4106336674729980 754 (-1.81158e+227) class: Neg. norm. non-zero
; hwf : - 4106336674729980 754 (-1.81158e+227) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110001 #b1110100101101011000100000010110100110100111111111100)))
(assert (= r (fp #b1 #b11011110001 #b1110100101101011000100000010110100110100111111111100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
