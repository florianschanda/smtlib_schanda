(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.518638175857689009973228166927583515644073486328125 948 {- 2335738695532802 948 (-3.61319e+285)}
; -1.518638175857689009973228166927583515644073486328125 948 I == -1.518638175857689009973228166927583515644073486328125 948
; [HW: -1.518638175857689009973228166927583515644073486328125 948] 

; mpf : - 2335738695532802 948
; mpfd: - 2335738695532802 948 (-3.61319e+285) class: Neg. norm. non-zero
; hwf : - 2335738695532802 948 (-3.61319e+285) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110110011 #b1000010011000101011110001011001111000100000100000010)))
(assert (= r (fp #b1 #b11110110011 #b1000010011000101011110001011001111000100000100000010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
