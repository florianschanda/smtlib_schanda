(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4060100051901336382087492893333546817302703857421875p-31 {- 1828506508082979 -31 (-6.54724e-010)}
; Y = -1.2748200326427798767525700895930640399456024169921875p-474 {- 1237679396603971 -474 (-2.61355e-143)}
; -1.4060100051901336382087492893333546817302703857421875p-31 = -1.2748200326427798767525700895930640399456024169921875p-474 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100000 #b0110011111110000010001011000111000100011111100100011)))
(assert (= y (fp #b1 #b01000100101 #b0100011001011010100110110000110001111100100001000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
