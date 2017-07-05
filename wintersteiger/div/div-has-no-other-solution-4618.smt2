(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4966396390730505316923881764523684978485107421875p-583 {- 2236666093466808 -583 (-4.72748e-176)}
; Y = 1.1863290373872235061725177729385904967784881591796875p768 {+ 839151383345403 768 (1.8418e+231)}
; -1.4966396390730505316923881764523684978485107421875p-583 / 1.1863290373872235061725177729385904967784881591796875p768 == -0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: -0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : - 1 -1023
; mpfd: - 1 -1023 (-4.94066e-324) class: Neg. denorm.
; hwf : - 1 -1023 (-4.94066e-324) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111000 #b0111111100100011110001100111111110110111010010111000)))
(assert (= y (fp #b0 #b11011111111 #b0010111110110011010000101000000111011111100011111011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
