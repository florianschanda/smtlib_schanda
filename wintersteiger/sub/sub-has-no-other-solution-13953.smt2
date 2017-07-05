(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.772015539735688260947199523798190057277679443359375p391 {+ 3476848897077878 391 (8.93708e+117)}
; Y = 1.95857190234438238718439606600441038608551025390625p1007 {+ 4317024062205988 1007 (2.68624e+303)}
; 1.772015539735688260947199523798190057277679443359375p391 - 1.95857190234438238718439606600441038608551025390625p1007 == -1.95857190234438238718439606600441038608551025390625p1007
; [HW: -1.95857190234438238718439606600441038608551025390625p1007] 

; mpf : - 4317024062205988 1007
; mpfd: - 4317024062205988 1007 (-2.68624e+303) class: Neg. norm. non-zero
; hwf : - 4317024062205988 1007 (-2.68624e+303) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000110 #b1100010110100010110011110111011100101011001001110110)))
(assert (= y (fp #b0 #b11111101110 #b1111010101100100111101111101101101101111000000100100)))
(assert (= r (fp #b1 #b11111101110 #b1111010101100100111101111101101101101111000000100100)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
