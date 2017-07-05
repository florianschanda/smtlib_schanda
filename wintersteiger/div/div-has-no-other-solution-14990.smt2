(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.62773507327102517905359491123817861080169677734375p-827 {+ 2827067442070780 -827 (1.81877e-249)}
; Y = 1.322322187557123829293459493783302605152130126953125p344 {+ 1451610083775506 344 (4.73866e+103)}
; 1.62773507327102517905359491123817861080169677734375p-827 / 1.322322187557123829293459493783302605152130126953125p344 == +zero
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
(assert (= x (fp #b0 #b00011000100 #b1010000010110011001111101110101001000000010011111100)))
(assert (= y (fp #b0 #b10101010111 #b0101001010000011101101001111011001010101010000010010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
