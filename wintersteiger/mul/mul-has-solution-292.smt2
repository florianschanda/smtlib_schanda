(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4443944549837564039762582979165017604827880859375p-615 {+ 2001374701870360 -615 (1.06228e-185)}
; Y = -1.337186987017727535231870206189341843128204345703125p-625 {- 1518555189087218 -625 (-9.60384e-189)}
; 1.4443944549837564039762582979165017604827880859375p-615 * -1.337186987017727535231870206189341843128204345703125p-625 == -zero
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
(assert (= x (fp #b0 #b00110011000 #b0111000111000011110101011100001010101101110100011000)))
(assert (= y (fp #b1 #b00110001110 #b0101011001010001111000101110100111100000101111110010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
