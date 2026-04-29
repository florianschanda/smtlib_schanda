(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9021416564806215010463574799359776079654693603515625 190 {- 4062884827961529 190 (-2.98498e+057)}
; -1.9021416564806215010463574799359776079654693603515625 190 I == -1.9021416564806215010463574799359776079654693603515625 190
; [HW: -1.9021416564806215010463574799359776079654693603515625 190] 

; mpf : - 4062884827961529 190
; mpfd: - 4062884827961529 190 (-2.98498e+057) class: Neg. norm. non-zero
; hwf : - 4062884827961529 190 (-2.98498e+057) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111101 #b1110011011110010110000010110111011110001100010111001)))
(assert (= r (fp #b1 #b10010111101 #b1110011011110010110000010110111011110001100010111001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
