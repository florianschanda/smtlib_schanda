(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.796318796906485548703358290367759764194488525390625 828 {- 3586301037016170 828 (-3.21529e+249)}
; -1.796318796906485548703358290367759764194488525390625 828 I == -1.796318796906485548703358290367759764194488525390625 828
; [HW: -1.796318796906485548703358290367759764194488525390625 828] 

; mpf : - 3586301037016170 828
; mpfd: - 3586301037016170 828 (-3.21529e+249) class: Neg. norm. non-zero
; hwf : - 3586301037016170 828 (-3.21529e+249) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111011 #b1100101111011011100011000111010111100111010001101010)))
(assert (= r (fp #b1 #b11100111011 #b1100101111011011100011000111010111100111010001101010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
