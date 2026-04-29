(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5068853741147736347016916624852456152439117431640625 91 {- 2282808781982849 91 (-3.73087e+027)}
; -1.5068853741147736347016916624852456152439117431640625 91 I == -1.5068853741147736347016916624852456152439117431640625 91
; [HW: -1.5068853741147736347016916624852456152439117431640625 91] 

; mpf : - 2282808781982849 91
; mpfd: - 2282808781982849 91 (-3.73087e+027) class: Neg. norm. non-zero
; hwf : - 2282808781982849 91 (-3.73087e+027) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011010 #b1000000111000011001111010110100010100100110010000001)))
(assert (= r (fp #b1 #b10001011010 #b1000000111000011001111010110100010100100110010000001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
