(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.81082093564753687786605951259844005107879638671875p-881 {- 3651612863646444 -881 (-1.12318e-265)}
; Y = 1.15487322874440945241758527117781341075897216796875p334 {+ 697487015262988 334 (4.0416e+100)}
; -1.81082093564753687786605951259844005107879638671875p-881 / 1.15487322874440945241758527117781341075897216796875p334 == -zero
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
(assert (= x (fp #b1 #b00010001110 #b1100111110010001111101011111100110000100101011101100)))
(assert (= y (fp #b0 #b10101001101 #b0010011110100101110001011001110001111011101100001100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
