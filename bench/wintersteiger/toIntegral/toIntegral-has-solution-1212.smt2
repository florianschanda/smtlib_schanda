(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.86599427300747588986951086553744971752166748046875 1017 {- 3900091485221452 1017 (-2.62069e+306)}
; -1.86599427300747588986951086553744971752166748046875 1017 I == -1.86599427300747588986951086553744971752166748046875 1017
; [HW: -1.86599427300747588986951086553744971752166748046875 1017] 

; mpf : - 3900091485221452 1017
; mpfd: - 3900091485221452 1017 (-2.62069e+306) class: Neg. norm. non-zero
; hwf : - 3900091485221452 1017 (-2.62069e+306) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111111000 #b1101110110110001110011001111100100010111001001001100)))
(assert (= r (fp #b1 #b11111111000 #b1101110110110001110011001111100100010111001001001100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
