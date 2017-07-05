(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1416139663068942677881523195537738502025604248046875 389 {- 637772605890187 389 (-1.43942e+117)}
; -1.1416139663068942677881523195537738502025604248046875 389 I == -1.1416139663068942677881523195537738502025604248046875 389
; [HW: -1.1416139663068942677881523195537738502025604248046875 389] 

; mpf : - 637772605890187 389
; mpfd: - 637772605890187 389 (-1.43942e+117) class: Neg. norm. non-zero
; hwf : - 637772605890187 389 (-1.43942e+117) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000100 #b0010010001000000110100000001100111110001111010001011)))
(assert (= r (fp #b1 #b10110000100 #b0010010001000000110100000001100111110001111010001011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
