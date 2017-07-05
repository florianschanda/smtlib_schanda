(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3071531201836188440523756071343086659908294677734375p356 {- 1383294677604631 356 (-1.91869e+107)}
; Y = 1.6623008252676021445637388751492835581302642822265625p396 {+ 2982737749882345 396 (2.6828e+119)}
; -1.3071531201836188440523756071343086659908294677734375p356 - 1.6623008252676021445637388751492835581302642822265625p396 == -1.6623008252687909713785074927727691829204559326171875p396
; [HW: -1.6623008252687909713785074927727691829204559326171875p396] 

; mpf : - 2982737749887699 396
; mpfd: - 2982737749887699 396 (-2.6828e+119) class: Neg. norm. non-zero
; hwf : - 2982737749887699 396 (-2.6828e+119) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100011 #b0100111010100001100101100011111000001101100100010111)))
(assert (= y (fp #b0 #b10110001011 #b1010100110001100100011000000000010100011010111101001)))
(assert (= r (fp #b1 #b10110001011 #b1010100110001100100011000000000010100100101011010011)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
