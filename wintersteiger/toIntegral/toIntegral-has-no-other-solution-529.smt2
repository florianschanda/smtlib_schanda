(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.954290836228770533722354230121709406375885009765625 890 {- 4297743854442970 890 (-1.61319e+268)}
; -1.954290836228770533722354230121709406375885009765625 890 I == -1.954290836228770533722354230121709406375885009765625 890
; [HW: -1.954290836228770533722354230121709406375885009765625 890] 

; mpf : - 4297743854442970 890
; mpfd: - 4297743854442970 890 (-1.61319e+268) class: Neg. norm. non-zero
; hwf : - 4297743854442970 890 (-1.61319e+268) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101111001 #b1111010001001100011001110111110001111001100111011010)))
(assert (= r (fp #b1 #b11101111001 #b1111010001001100011001110111110001111001100111011010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
