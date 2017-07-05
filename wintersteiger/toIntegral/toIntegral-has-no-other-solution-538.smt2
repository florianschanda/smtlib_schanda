(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2589991491175094306953496925416402518749237060546875 62 {- 1166428471454891 62 (-5.80611e+018)}
; -1.2589991491175094306953496925416402518749237060546875 62 I == -1.2589991491175094306953496925416402518749237060546875 62
; [HW: -1.2589991491175094306953496925416402518749237060546875 62] 

; mpf : - 1166428471454891 62
; mpfd: - 1166428471454891 62 (-5.80611e+018) class: Neg. norm. non-zero
; hwf : - 1166428471454891 62 (-5.80611e+018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111101 #b0100001001001101110001001010101100100110110010101011)))
(assert (= r (fp #b1 #b10000111101 #b0100001001001101110001001010101100100110110010101011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
