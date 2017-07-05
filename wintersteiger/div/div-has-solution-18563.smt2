(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3586974607559187955274637715774588286876678466796875p-749 {- 1615429750599099 -749 (-4.58834e-226)}
; Y = 1.3950060388226497298802541990880854427814483642578125p609 {+ 1778949049250781 609 (2.96376e+183)}
; -1.3586974607559187955274637715774588286876678466796875p-749 / 1.3950060388226497298802541990880854427814483642578125p609 == -0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: -0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : - 1 -1023
; mpfd: - 1 -1023 (-4.94066e-324) class: Neg. denorm.
; hwf : - 1 -1023 (-4.94066e-324) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010010 #b0101101111010011100110001100011100011010110110111011)))
(assert (= y (fp #b0 #b11001100000 #b0110010100011111000111011010001001110111001111011101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
