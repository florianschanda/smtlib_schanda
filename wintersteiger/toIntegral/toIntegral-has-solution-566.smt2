(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7752518327031960865269866189919412136077880859375 781 {- 3491423864880408 781 (-2.25781e+235)}
; -1.7752518327031960865269866189919412136077880859375 781 I == -1.7752518327031960865269866189919412136077880859375 781
; [HW: -1.7752518327031960865269866189919412136077880859375 781] 

; mpf : - 3491423864880408 781
; mpfd: - 3491423864880408 781 (-2.25781e+235) class: Neg. norm. non-zero
; hwf : - 3491423864880408 781 (-2.25781e+235) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001100 #b1100011001110110111001110111001110011111110100011000)))
(assert (= r (fp #b1 #b11100001100 #b1100011001110110111001110111001110011111110100011000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
