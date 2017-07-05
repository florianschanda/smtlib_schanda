(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8825663552004463507927312093670479953289031982421875p650 {+ 3974725508410467 650 (8.79524e+195)}
; Y = 1.3682132398297570663459055140265263617038726806640625p-121 {+ 1658285009690177 -121 (5.14665e-037)}
; 1.8825663552004463507927312093670479953289031982421875p650 > 1.3682132398297570663459055140265263617038726806640625p-121 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001001 #b1110000111101111110111100110000000100010110001100011)))
(assert (= y (fp #b0 #b01110000110 #b0101111001000011001110010000111100000101111001000001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
