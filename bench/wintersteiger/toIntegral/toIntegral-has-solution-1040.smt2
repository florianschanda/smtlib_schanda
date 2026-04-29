(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5338753151745045943954437461798079311847686767578125 709 {- 2404360670482205 709 (-4.13102e+213)}
; -1.5338753151745045943954437461798079311847686767578125 709 I == -1.5338753151745045943954437461798079311847686767578125 709
; [HW: -1.5338753151745045943954437461798079311847686767578125 709] 

; mpf : - 2404360670482205 709
; mpfd: - 2404360670482205 709 (-4.13102e+213) class: Neg. norm. non-zero
; hwf : - 2404360670482205 709 (-4.13102e+213) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000100 #b1000100010101100000011010111101011010000111100011101)))
(assert (= r (fp #b1 #b11011000100 #b1000100010101100000011010111101011010000111100011101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
