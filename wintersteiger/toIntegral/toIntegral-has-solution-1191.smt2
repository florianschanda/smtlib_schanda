(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.86534233427540652172638147021643817424774169921875 187 {- 3897155414190636 187 (-3.65904e+056)}
; -1.86534233427540652172638147021643817424774169921875 187 I == -1.86534233427540652172638147021643817424774169921875 187
; [HW: -1.86534233427540652172638147021643817424774169921875 187] 

; mpf : - 3897155414190636 187
; mpfd: - 3897155414190636 187 (-3.65904e+056) class: Neg. norm. non-zero
; hwf : - 3897155414190636 187 (-3.65904e+056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111010 #b1101110110000111000100110100000110001110101000101100)))
(assert (= r (fp #b1 #b10010111010 #b1101110110000111000100110100000110001110101000101100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
