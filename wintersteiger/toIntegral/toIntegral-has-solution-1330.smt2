(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.247235464493490209036963278776966035366058349609375 971 {- 1113449545765654 971 (-2.48928e+292)}
; -1.247235464493490209036963278776966035366058349609375 971 I == -1.247235464493490209036963278776966035366058349609375 971
; [HW: -1.247235464493490209036963278776966035366058349609375 971] 

; mpf : - 1113449545765654 971
; mpfd: - 1113449545765654 971 (-2.48928e+292) class: Neg. norm. non-zero
; hwf : - 1113449545765654 971 (-2.48928e+292) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111001010 #b0011111101001010110100101100101001101001001100010110)))
(assert (= r (fp #b1 #b11111001010 #b0011111101001010110100101100101001101001001100010110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
