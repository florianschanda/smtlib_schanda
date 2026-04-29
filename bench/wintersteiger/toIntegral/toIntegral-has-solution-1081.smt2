(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0211805924990489113923786135273985564708709716796875 102 {- 95388908486203 102 (-5.178e+030)}
; -1.0211805924990489113923786135273985564708709716796875 102 I == -1.0211805924990489113923786135273985564708709716796875 102
; [HW: -1.0211805924990489113923786135273985564708709716796875 102] 

; mpf : - 95388908486203 102
; mpfd: - 95388908486203 102 (-5.178e+030) class: Neg. norm. non-zero
; hwf : - 95388908486203 102 (-5.178e+030) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100101 #b0000010101101100000101110110000000010111111000111011)))
(assert (= r (fp #b1 #b10001100101 #b0000010101101100000101110110000000010111111000111011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
