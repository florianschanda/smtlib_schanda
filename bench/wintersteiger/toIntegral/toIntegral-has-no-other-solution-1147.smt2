(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.717446310132450637553347405628301203250885009765625 692 {- 3231090934970842 692 (-3.52891e+208)}
; -1.717446310132450637553347405628301203250885009765625 692 I == -1.717446310132450637553347405628301203250885009765625 692
; [HW: -1.717446310132450637553347405628301203250885009765625 692] 

; mpf : - 3231090934970842 692
; mpfd: - 3231090934970842 692 (-3.52891e+208) class: Neg. norm. non-zero
; hwf : - 3231090934970842 692 (-3.52891e+208) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110011 #b1011011110101010100011111011011010100111100111011010)))
(assert (= r (fp #b1 #b11010110011 #b1011011110101010100011111011011010100111100111011010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
