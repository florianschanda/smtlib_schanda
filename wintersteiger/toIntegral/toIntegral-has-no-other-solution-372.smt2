(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.458408978025111490950393999810330569744110107421875 964 {- 2064490502617182 964 (-2.27402e+290)}
; -1.458408978025111490950393999810330569744110107421875 964 I == -1.458408978025111490950393999810330569744110107421875 964
; [HW: -1.458408978025111490950393999810330569744110107421875 964] 

; mpf : - 2064490502617182 964
; mpfd: - 2064490502617182 964 (-2.27402e+290) class: Neg. norm. non-zero
; hwf : - 2064490502617182 964 (-2.27402e+290) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000011 #b0111010101011010010010100111000011001111100001011110)))
(assert (= r (fp #b1 #b11111000011 #b0111010101011010010010100111000011001111100001011110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
