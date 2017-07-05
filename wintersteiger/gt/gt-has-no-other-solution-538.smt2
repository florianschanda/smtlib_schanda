(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.17233314683047762372325450996868312358856201171875p593 {+ 776119495849324 593 (3.80048e+178)}
; Y = -1.949024393423632428579139741486869752407073974609375p-809 {- 4274025904588182 -809 (-5.70888e-244)}
; 1.17233314683047762372325450996868312358856201171875p593 > -1.949024393423632428579139741486869752407073974609375p-809 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010000 #b0010110000011110000001100110110110100111010101101100)))
(assert (= y (fp #b1 #b00011010110 #b1111001011110011010000110011110011011100010110010110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
