(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1631702388369558054392882695537991821765899658203125p-699 {- 734853426824069 -699 (-4.42259e-211)}
; Y = -1.7244092114027755879845926756388507783412933349609375p341 {- 3262449054537295 341 (-7.72447e+102)}
; -1.1631702388369558054392882695537991821765899658203125p-699 < -1.7244092114027755879845926756388507783412933349609375p341 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000100 #b0010100111000101100001100101011101111100001110000101)))
(assert (= y (fp #b1 #b10101010100 #b1011100101110010111000011100111111100101011001001111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
