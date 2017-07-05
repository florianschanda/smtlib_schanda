(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9411088175592634552657500535133294761180877685546875p260 {+ 4238377320074987 260 (3.59624e+078)}
; Y = -1.9147984764269516677615001754020340740680694580078125p-111 {- 4119886077555517 -111 (-7.37554e-034)}
; 1.9411088175592634552657500535133294761180877685546875p260 < -1.9147984764269516677615001754020340740680694580078125p-111 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000011 #b1111000011101100100000011110100101100100111011101011)))
(assert (= y (fp #b1 #b01110010000 #b1110101000110000001110111010001010101111001100111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
