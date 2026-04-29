(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3630387032636492872228473061113618314266204833984375 588 {- 1634980968739239 588 (-1.38085e+177)}
; -1.3630387032636492872228473061113618314266204833984375 588 I == -1.3630387032636492872228473061113618314266204833984375 588
; [HW: -1.3630387032636492872228473061113618314266204833984375 588] 

; mpf : - 1634980968739239 588
; mpfd: - 1634980968739239 588 (-1.38085e+177) class: Neg. norm. non-zero
; hwf : - 1634980968739239 588 (-1.38085e+177) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001011 #b0101110011110000000110101011110110110011000110100111)))
(assert (= r (fp #b1 #b11001001011 #b0101110011110000000110101011110110110011000110100111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
