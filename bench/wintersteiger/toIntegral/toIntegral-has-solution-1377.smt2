(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.981802690727369142820180059061385691165924072265625 311 {- 4421646232111130 311 (-8.26778e+093)}
; -1.981802690727369142820180059061385691165924072265625 311 I == -1.981802690727369142820180059061385691165924072265625 311
; [HW: -1.981802690727369142820180059061385691165924072265625 311] 

; mpf : - 4421646232111130 311
; mpfd: - 4421646232111130 311 (-8.26778e+093) class: Neg. norm. non-zero
; hwf : - 4421646232111130 311 (-8.26778e+093) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110110 #b1111101101010111011010111100111111001100100000011010)))
(assert (= r (fp #b1 #b10100110110 #b1111101101010111011010111100111111001100100000011010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
