(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0199804119057234164102965223719365894794464111328125 672 {- 89983775613325 672 (-1.99871e+202)}
; -1.0199804119057234164102965223719365894794464111328125 672 I == -1.0199804119057234164102965223719365894794464111328125 672
; [HW: -1.0199804119057234164102965223719365894794464111328125 672] 

; mpf : - 89983775613325 672
; mpfd: - 89983775613325 672 (-1.99871e+202) class: Neg. norm. non-zero
; hwf : - 89983775613325 672 (-1.99871e+202) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011111 #b0000010100011101011011111010111110110010000110001101)))
(assert (= r (fp #b1 #b11010011111 #b0000010100011101011011111010111110110010000110001101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
