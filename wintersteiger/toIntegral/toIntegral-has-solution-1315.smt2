(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.062065401894954685957372930715791881084442138671875 621 {- 279517720846718 621 (-9.24227e+186)}
; -1.062065401894954685957372930715791881084442138671875 621 I == -1.062065401894954685957372930715791881084442138671875 621
; [HW: -1.062065401894954685957372930715791881084442138671875 621] 

; mpf : - 279517720846718 621
; mpfd: - 279517720846718 621 (-9.24227e+186) class: Neg. norm. non-zero
; hwf : - 279517720846718 621 (-9.24227e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101100 #b0000111111100011100001001010011101011010000101111110)))
(assert (= r (fp #b1 #b11001101100 #b0000111111100011100001001010011101011010000101111110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
