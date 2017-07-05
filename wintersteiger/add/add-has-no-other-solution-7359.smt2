(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2506175721764594133134096409776248037815093994140625p-997 {+ 1128681204666401 -997 (9.33725e-301)}
; Y = -1.834151035900676074419379801838658750057220458984375p-328 {- 3756682294452998 -328 (-3.35426e-099)}
; 1.2506175721764594133134096409776248037815093994140625p-997 + -1.834151035900676074419379801838658750057220458984375p-328 == -1.834151035900676074419379801838658750057220458984375p-328
; [HW: -1.834151035900676074419379801838658750057220458984375p-328] 

; mpf : - 3756682294452998 -328
; mpfd: - 3756682294452998 -328 (-3.35426e-099) class: Neg. norm. non-zero
; hwf : - 3756682294452998 -328 (-3.35426e-099) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011010 #b0100000000101000011110010010010001001101000000100001)))
(assert (= y (fp #b1 #b01010110111 #b1101010110001010111011000001101100011110001100000110)))
(assert (= r (fp #b1 #b01010110111 #b1101010110001010111011000001101100011110001100000110)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
