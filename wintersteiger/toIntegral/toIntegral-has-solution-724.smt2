(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8779167085097279166205908040865324437618255615234375 951 {- 3953785361306743 951 (-3.57439e+286)}
; -1.8779167085097279166205908040865324437618255615234375 951 I == -1.8779167085097279166205908040865324437618255615234375 951
; [HW: -1.8779167085097279166205908040865324437618255615234375 951] 

; mpf : - 3953785361306743 951
; mpfd: - 3953785361306743 951 (-3.57439e+286) class: Neg. norm. non-zero
; hwf : - 3953785361306743 951 (-3.57439e+286) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110110110 #b1110000010111111001001100011111110101001010001110111)))
(assert (= r (fp #b1 #b11110110110 #b1110000010111111001001100011111110101001010001110111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
