(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.10532676920320493962890395778231322765350341796875 377 {- 474349598535692 377 (-3.40251e+113)}
; -1.10532676920320493962890395778231322765350341796875 377 I == -1.10532676920320493962890395778231322765350341796875 377
; [HW: -1.10532676920320493962890395778231322765350341796875 377] 

; mpf : - 474349598535692 377
; mpfd: - 474349598535692 377 (-3.40251e+113) class: Neg. norm. non-zero
; hwf : - 474349598535692 377 (-3.40251e+113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111000 #b0001101011110110101100011111010100011111000000001100)))
(assert (= r (fp #b1 #b10101111000 #b0001101011110110101100011111010100011111000000001100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
