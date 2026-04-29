(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8440956641137831173438144105602987110614776611328125 672 {- 3801468918367885 672 (-3.6136e+202)}
; -1.8440956641137831173438144105602987110614776611328125 672 I == -1.8440956641137831173438144105602987110614776611328125 672
; [HW: -1.8440956641137831173438144105602987110614776611328125 672] 

; mpf : - 3801468918367885 672
; mpfd: - 3801468918367885 672 (-3.6136e+202) class: Neg. norm. non-zero
; hwf : - 3801468918367885 672 (-3.6136e+202) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011111 #b1101100000010110101001110100100000010000011010001101)))
(assert (= r (fp #b1 #b11010011111 #b1101100000010110101001110100100000010000011010001101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
