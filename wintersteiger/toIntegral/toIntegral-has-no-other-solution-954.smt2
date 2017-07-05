(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.449392074226703908124136432888917624950408935546875 781 {- 2023881978030638 781 (-1.84337e+235)}
; -1.449392074226703908124136432888917624950408935546875 781 I == -1.449392074226703908124136432888917624950408935546875 781
; [HW: -1.449392074226703908124136432888917624950408935546875 781] 

; mpf : - 2023881978030638 781
; mpfd: - 2023881978030638 781 (-1.84337e+235) class: Neg. norm. non-zero
; hwf : - 2023881978030638 781 (-1.84337e+235) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001100 #b0111001100001011010110111110010111100010101000101110)))
(assert (= r (fp #b1 #b11100001100 #b0111001100001011010110111110010111100010101000101110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
