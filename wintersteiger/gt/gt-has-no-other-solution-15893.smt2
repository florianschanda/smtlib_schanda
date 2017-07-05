(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5235142828252572488878513468080200254917144775390625p-40 {+ 2357698729054961 -40 (1.38563e-012)}
; Y = 1.9648775907818383235081682869349606335163116455078125p-341 {+ 4345422358303229 -341 (4.38639e-103)}
; 1.5235142828252572488878513468080200254917144775390625p-40 > 1.9648775907818383235081682869349606335163116455078125p-341 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010111 #b1000011000000101000010000011001110111001001011110001)))
(assert (= y (fp #b0 #b01010101010 #b1111011100000010001101111100000100001101000111111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
