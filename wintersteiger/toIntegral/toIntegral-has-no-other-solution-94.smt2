(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6665087972177812236651561761391349136829376220703125 646 {- 3001688770789157 646 (-4.86614e+194)}
; -1.6665087972177812236651561761391349136829376220703125 646 I == -1.6665087972177812236651561761391349136829376220703125 646
; [HW: -1.6665087972177812236651561761391349136829376220703125 646] 

; mpf : - 3001688770789157 646
; mpfd: - 3001688770789157 646 (-4.86614e+194) class: Neg. norm. non-zero
; hwf : - 3001688770789157 646 (-4.86614e+194) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010000101 #b1010101010100000010100100000111010001011111100100101)))
(assert (= r (fp #b1 #b11010000101 #b1010101010100000010100100000111010001011111100100101)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
