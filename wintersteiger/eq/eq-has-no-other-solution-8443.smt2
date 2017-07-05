(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7761902576446171320156963702174834907054901123046875p-24 {+ 3495650155096907 -24 (1.05869e-007)}
; Y = -1.167043864597661961823860110598616302013397216796875p642 {- 752298686356558 642 (-2.12983e+193)}
; 1.7761902576446171320156963702174834907054901123046875p-24 = -1.167043864597661961823860110598616302013397216796875p642 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100111 #b1100011010110100011001111001110000001110101101001011)))
(assert (= y (fp #b1 #b11010000001 #b0010101011000011011000101111111101110001110001001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
