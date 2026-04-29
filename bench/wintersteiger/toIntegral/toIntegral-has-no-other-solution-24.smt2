(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.394235533604344379199346803943626582622528076171875 700 {- 1775479002236734 700 (-7.33387e+210)}
; -1.394235533604344379199346803943626582622528076171875 700 I == -1.394235533604344379199346803943626582622528076171875 700
; [HW: -1.394235533604344379199346803943626582622528076171875 700] 

; mpf : - 1775479002236734 700
; mpfd: - 1775479002236734 700 (-7.33387e+210) class: Neg. norm. non-zero
; hwf : - 1775479002236734 700 (-7.33387e+210) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111011 #b0110010011101100100111101011001111000000011100111110)))
(assert (= r (fp #b1 #b11010111011 #b0110010011101100100111101011001111000000011100111110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
