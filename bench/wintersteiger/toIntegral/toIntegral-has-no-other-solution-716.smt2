(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4053061278592815508403646163060329854488372802734375 695 {- 1825336526398039 695 (-2.31003e+209)}
; -1.4053061278592815508403646163060329854488372802734375 695 I == -1.4053061278592815508403646163060329854488372802734375 695
; [HW: -1.4053061278592815508403646163060329854488372802734375 695] 

; mpf : - 1825336526398039 695
; mpfd: - 1825336526398039 695 (-2.31003e+209) class: Neg. norm. non-zero
; hwf : - 1825336526398039 695 (-2.31003e+209) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110110 #b0110011111000010001001000111010000000110001001010111)))
(assert (= r (fp #b1 #b11010110110 #b0110011111000010001001000111010000000110001001010111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
