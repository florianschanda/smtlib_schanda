(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9296137459636188982159410443273372948169708251953125p-735 {+ 4186608119920245 -735 (1.06764e-221)}
; Y = -1.2827748275483223938664423258160240948200225830078125p-919 {- 1273504607976381 -919 (-2.89457e-277)}
; 1.9296137459636188982159410443273372948169708251953125p-735 * -1.2827748275483223938664423258160240948200225830078125p-919 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100000 #b1110110111111011001010101001110011010011011001110101)))
(assert (= y (fp #b1 #b00001101000 #b0100100001100011111011100101110001110011101110111101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
