(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.3524698284562897132587977466755546629428863525390625p-1022 {- 1587382988095089 -1023 (-7.84271e-309)}
; Y = -1.2817514537881569136601456193602643907070159912109375p-711 {- 1268895742291439 -711 (-1.18981e-214)}
; -0.3524698284562897132587977466755546629428863525390625p-1022 * -1.2817514537881569136601456193602643907070159912109375p-711 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0101101000111011011101100111001000001011111001110001)))
(assert (= y (fp #b1 #b00100111000 #b0100100000100000110111001111111110011110110111101111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
