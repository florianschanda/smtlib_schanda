(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.872830090783413670152413033065386116504669189453125p-358 {- 3930877271609938 -358 (-3.18977e-108)}
; Y = 1.813785678044002924735877968487329781055450439453125p769 {+ 3664964876398418 769 (5.63187e+231)}
; -1.872830090783413670152413033065386116504669189453125p-358 / 1.813785678044002924735877968487329781055450439453125p769 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010011001 #b1101111101110001110010101111011011100001001001010010)))
(assert (= y (fp #b0 #b11100000000 #b1101000001010100010000100001100100100110111101010010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
