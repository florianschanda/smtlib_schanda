(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4006756202014127854482694601756520569324493408203125p646 {+ 1804482573835525 646 (4.08992e+194)}
; Y = 1.8963836539969129990623741832678206264972686767578125p364 {+ 4036953090121501 364 (7.12598e+109)}
; 1.4006756202014127854482694601756520569324493408203125p646 = 1.8963836539969129990623741832678206264972686767578125p364 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000101 #b0110011010010010101011010110110100010001110100000101)))
(assert (= y (fp #b0 #b10101101011 #b1110010101111001011001100010111010010101111100011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
