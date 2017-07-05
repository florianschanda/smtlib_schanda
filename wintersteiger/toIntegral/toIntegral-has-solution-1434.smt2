(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7217536583473107558717174470075406134128570556640625 665 {- 3250489506786241 665 (-2.63583e+200)}
; -1.7217536583473107558717174470075406134128570556640625 665 I == -1.7217536583473107558717174470075406134128570556640625 665
; [HW: -1.7217536583473107558717174470075406134128570556640625 665] 

; mpf : - 3250489506786241 665
; mpfd: - 3250489506786241 665 (-2.63583e+200) class: Neg. norm. non-zero
; hwf : - 3250489506786241 665 (-2.63583e+200) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011000 #b1011100011000100110110010000011001011110101111000001)))
(assert (= r (fp #b1 #b11010011000 #b1011100011000100110110010000011001011110101111000001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
