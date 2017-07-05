(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3999574045698348623290030445787124335765838623046875 766 {+ 1801248018184779 766 (5.43365e+230)}
; 1.3999574045698348623290030445787124335765838623046875 766 I == 1.3999574045698348623290030445787124335765838623046875 766
; [HW: 1.3999574045698348623290030445787124335765838623046875 766] 

; mpf : + 1801248018184779 766
; mpfd: + 1801248018184779 766 (5.43365e+230) class: Pos. norm. non-zero
; hwf : + 1801248018184779 766 (5.43365e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111101 #b0110011001100011100110111100010001101011101001001011)))
(assert (= r (fp #b0 #b11011111101 #b0110011001100011100110111100010001101011101001001011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
