(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.986645926903783720973706294898875057697296142578125p-19 {+ 4443458228750498 -19 (3.78923e-006)}
; Y = 1.9990912000740699294709656896884553134441375732421875p-438 {+ 4499506756362723 -438 (2.8164e-132)}
; 1.986645926903783720973706294898875057697296142578125p-19 = 1.9990912000740699294709656896884553134441375732421875p-438 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111101100 #b1111110010010100110100111101010011001000100010100010)))
(assert (= y (fp #b0 #b01001001001 #b1111111111000100011100001101111000001010000111100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
