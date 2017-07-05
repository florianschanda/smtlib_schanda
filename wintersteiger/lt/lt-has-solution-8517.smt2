(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0663756031627660281202452097204513847827911376953125p640 {- 298929141670325 640 (-4.86528e+192)}
; Y = -1.890479546537708888109818872180767357349395751953125p-980 {- 4010363353968274 -980 (-1.85002e-295)}
; -1.0663756031627660281202452097204513847827911376953125p640 < -1.890479546537708888109818872180767357349395751953125p-980 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111111 #b0001000011111101111111011101010011010110000110110101)))
(assert (= y (fp #b1 #b00000101011 #b1110001111110110011101111011001000100010111010010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
