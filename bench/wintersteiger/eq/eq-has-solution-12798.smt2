(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.33197114786299675159852995420806109905242919921875p-940 {- 1495065137813548 -940 (-1.43317e-283)}
; Y = -1.2305289354287882730432102107442915439605712890625p106 {- 1038210027695208 106 (-9.98324e+031)}
; -1.33197114786299675159852995420806109905242919921875p-940 = -1.2305289354287882730432102107442915439605712890625p106 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010011 #b0101010011111100000011111010011101001001100000101100)))
(assert (= y (fp #b1 #b10001101001 #b0011101100000011111100011011111001110010110001101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
