(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.3036687672867828258205236124922521412372589111328125p303 {- 1367602547196813 303 (-2.1245e+091)}
; -zero < -1.3036687672867828258205236124922521412372589111328125p303 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10100101110 #b0100110110111101001111001000000001010000001110001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
