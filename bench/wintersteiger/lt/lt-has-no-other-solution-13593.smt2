(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.393934115827540676235685168649069964885711669921875p-647 {- 1774121537249438 -647 (-2.3869e-195)}
; Y = -1.6179971527340075709844313678331673145294189453125p971 {- 2783211746768904 971 (-3.22926e+292)}
; -1.393934115827540676235685168649069964885711669921875p-647 < -1.6179971527340075709844313678331673145294189453125p971 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101111000 #b0110010011011000110111011100000001000010000010011110)))
(assert (= y (fp #b1 #b11111001010 #b1001111000110101000011111011100000000011100000001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
