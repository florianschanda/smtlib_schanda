(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1242753426467537725130796388839371502399444580078125p234 {+ 559686386835261 234 (3.10379e+070)}
; Y = 1.3750487174618479802035153625183738768100738525390625p-37 {+ 1689069264206961 -37 (1.00048e-011)}
; 1.1242753426467537725130796388839371502399444580078125p234 = 1.3750487174618479802035153625183738768100738525390625p-37 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101001 #b0001111111010000100000100100010001011101111100111101)))
(assert (= y (fp #b0 #b01111011010 #b0110000000000011001100010101011111100111110001110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
