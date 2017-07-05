(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.96349452069294283518274824018590152263641357421875p-645 {+ 4339193564366252 -645 (1.34488e-194)}
; Y = -1.7742902039922239243452395385247655212879180908203125p471 {- 3487093074176005 471 (-1.08181e+142)}
; 1.96349452069294283518274824018590152263641357421875p-645 / -1.7742902039922239243452395385247655212879180908203125p471 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101111010 #b1111011010100111100100111011000001000000010110101100)))
(assert (= y (fp #b1 #b10111010110 #b1100011000110111111000011111111111000010100000000101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
