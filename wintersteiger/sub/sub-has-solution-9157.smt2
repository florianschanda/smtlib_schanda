(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8299322452844695163776123081333935260772705078125p610 {- 3737682550605896 610 (-7.77557e+183)}
; Y = +zero {+ 0 -1023 (0)}
; -1.8299322452844695163776123081333935260772705078125p610 - +zero == -1.8299322452844695163776123081333935260772705078125p610
; [HW: -1.8299322452844695163776123081333935260772705078125p610] 

; mpf : - 3737682550605896 610
; mpfd: - 3737682550605896 610 (-7.77557e+183) class: Neg. norm. non-zero
; hwf : - 3737682550605896 610 (-7.77557e+183) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001100001 #b1101010001110110011100001000101101100100100001001000)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11001100001 #b1101010001110110011100001000101101100100100001001000)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
