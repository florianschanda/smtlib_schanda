(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9753934127389747299474720421130768954753875732421875 299 {- 4392781410150883 299 (-2.01197e+090)}
; -1.9753934127389747299474720421130768954753875732421875 299 I == -1.9753934127389747299474720421130768954753875732421875 299
; [HW: -1.9753934127389747299474720421130768954753875732421875 299] 

; mpf : - 4392781410150883 299
; mpfd: - 4392781410150883 299 (-2.01197e+090) class: Neg. norm. non-zero
; hwf : - 4392781410150883 299 (-2.01197e+090) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100101010 #b1111100110110011011000011111100001110010100111100011)))
(assert (= r (fp #b1 #b10100101010 #b1111100110110011011000011111100001110010100111100011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
