(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2926156167058484580678623387939296662807464599609375p-913 {- 1317823582359247 -913 (-1.86674e-275)}
; Y = -1.0800188771633096873614476862712763249874114990234375p373 {- 360372985375287 373 (-2.07788e+112)}
; -1.2926156167058484580678623387939296662807464599609375p-913 < -1.0800188771633096873614476862712763249874114990234375p373 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101110 #b0100101011101000110110110110100000001100111011001111)))
(assert (= y (fp #b1 #b10101110100 #b0001010001111100000111011111110001111010101000110111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
