(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3060616779241567275704483108711428940296173095703125p-1000 {+ 1378379258651621 -1000 (1.2189e-301)}
; Y = -1.621417562643717502623985637910664081573486328125p628 {- 2798615903563728 628 (-1.80606e+189)}
; 1.3060616779241567275704483108711428940296173095703125p-1000 < -1.621417562643717502623985637910664081573486328125p628 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010111 #b0100111001011010000011101110000100111110001111100101)))
(assert (= y (fp #b1 #b11001110011 #b1001111100010101001110001010110010110110111111010000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
