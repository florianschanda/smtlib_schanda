(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.09455429995644504259644236299209296703338623046875 397 {+ 425834710050124 397 (3.53302e+119)}
; 1.09455429995644504259644236299209296703338623046875 397 I == 1.09455429995644504259644236299209296703338623046875 397
; [HW: 1.09455429995644504259644236299209296703338623046875 397] 

; mpf : + 425834710050124 397
; mpfd: + 425834710050124 397 (3.53302e+119) class: Pos. norm. non-zero
; hwf : + 425834710050124 397 (3.53302e+119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001100 #b0001100000110100101101011110101000000010010101001100)))
(assert (= r (fp #b0 #b10110001100 #b0001100000110100101101011110101000000010010101001100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
