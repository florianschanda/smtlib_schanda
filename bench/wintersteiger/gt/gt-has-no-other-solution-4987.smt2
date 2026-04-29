(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.836043059073478644904753309674561023712158203125p-777 {+ 3765203209309008 -777 (2.30981e-234)}
; Y = 1.999137405868424810506667199661023914813995361328125p-521 {+ 4499714848760962 -521 (2.91216e-157)}
; 1.836043059073478644904753309674561023712158203125p-777 > 1.999137405868424810506667199661023914813995361328125p-521 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110110 #b1101011000000110111010101111110011000100101101010000)))
(assert (= y (fp #b0 #b00111110110 #b1111111111000111011110000001001001101010010010000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
