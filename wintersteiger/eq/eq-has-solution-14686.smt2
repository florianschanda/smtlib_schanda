(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.365816560905968923833597727934829890727996826171875p-194 {+ 1647491327382078 -194 (5.43968e-059)}
; Y = 1.5225693561849198420787843133439309895038604736328125p311 {+ 2353443157789645 311 (6.35193e+093)}
; 1.365816560905968923833597727934829890727996826171875p-194 = 1.5225693561849198420787843133439309895038604736328125p311 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111101 #b0101110110100110001001110111010101101101001000111110)))
(assert (= y (fp #b0 #b10100110110 #b1000010111000111000110101111011010110100101111001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
