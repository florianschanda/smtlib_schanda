(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5980262183338436177137964477878995239734649658203125p-418 {- 2693270654046085 -418 (-2.36073e-126)}
; Y = -1.526827407647606715812571565038524568080902099609375p-754 {- 2372619716770326 -754 (-1.61129e-227)}
; -1.5980262183338436177137964477878995239734649658203125p-418 = -1.526827407647606715812571565038524568080902099609375p-754 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011101 #b1001100100011000001111110000100111100100111110000101)))
(assert (= y (fp #b1 #b00100001101 #b1000011011011110001010010011011001111011101000010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
