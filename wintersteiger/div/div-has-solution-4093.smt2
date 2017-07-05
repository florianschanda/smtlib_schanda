(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.01118716278547804421350519987754523754119873046875p-538 {+ 50382502152012 -538 (1.12381e-162)}
; Y = 1.9904887303874698734063031224650330841541290283203125p621 {+ 4460764677087685 621 (1.73216e+187)}
; 1.01118716278547804421350519987754523754119873046875p-538 / 1.9904887303874698734063031224650330841541290283203125p621 == 0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: 0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : + 1 -1023
; mpfd: + 1 -1023 (4.94066e-324) class: Pos. denorm.
; hwf : + 1 -1023 (4.94066e-324) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100101 #b0000001011011101001010010111001001001100011101001100)))
(assert (= y (fp #b0 #b11001101100 #b1111110110010000101010110110000000010010000111000101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
