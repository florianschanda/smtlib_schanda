(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.02622987259390896497279754839837551116943359375p772 {+ 118128844439904 772 (2.54918e+232)}
; Y = 1.5810135163032594807219766153139062225818634033203125p876 {+ 2616652255520581 876 (7.96548e+263)}
; 1.02622987259390896497279754839837551116943359375p772 - 1.5810135163032594807219766153139062225818634033203125p876 == -1.5810135163032594807219766153139062225818634033203125p876
; [HW: -1.5810135163032594807219766153139062225818634033203125p876] 

; mpf : - 2616652255520581 876
; mpfd: - 2616652255520581 876 (-7.96548e+263) class: Neg. norm. non-zero
; hwf : - 2616652255520581 876 (-7.96548e+263) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000011 #b0000011010110111000000000011110011111000000101100000)))
(assert (= y (fp #b0 #b11101101011 #b1001010010111101010011010100001100001110011101000101)))
(assert (= r (fp #b1 #b11101101011 #b1001010010111101010011010100001100001110011101000101)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
