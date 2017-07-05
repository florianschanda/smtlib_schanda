(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0795488756643560890324806678108870983123779296875p-519 {+ 358256286799736 -519 (6.29035e-157)}
; Y = -1.4067774125346279578963049061712808907032012939453125p117 {- 1831962603513685 117 (-2.33741e+035)}
; 1.0795488756643560890324806678108870983123779296875p-519 < -1.4067774125346279578963049061712808907032012939453125p117 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111000 #b0001010001011101010100001010101101101001011101111000)))
(assert (= y (fp #b1 #b10001110100 #b0110100000100010100100001000001110010110011101010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
