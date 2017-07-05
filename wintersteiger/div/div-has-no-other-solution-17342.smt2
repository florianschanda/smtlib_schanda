(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6953682602801809498060947589692659676074981689453125p-717 {- 3131660237883093 -717 (-2.45899e-216)}
; Y = 1.46845385510209869295294993207789957523345947265625p902 {+ 2109728607278084 902 (4.96497e+271)}
; -1.6953682602801809498060947589692659676074981689453125p-717 / 1.46845385510209869295294993207789957523345947265625p902 == -zero
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
(assert (= x (fp #b1 #b00100110010 #b1011001000000011101001111000000010010100011011010101)))
(assert (= y (fp #b0 #b11110000101 #b0111011111101100100101111000001101011001010000000100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
