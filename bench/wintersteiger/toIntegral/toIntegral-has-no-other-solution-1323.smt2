(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.02286239810749890466468059457838535308837890625 335 {- 102963087597728 335 (-7.15922e+100)}
; -1.02286239810749890466468059457838535308837890625 335 I == -1.02286239810749890466468059457838535308837890625 335
; [HW: -1.02286239810749890466468059457838535308837890625 335] 

; mpf : - 102963087597728 335
; mpfd: - 102963087597728 335 (-7.15922e+100) class: Neg. norm. non-zero
; hwf : - 102963087597728 335 (-7.15922e+100) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001110 #b0000010111011010010011110110010000101110000010100000)))
(assert (= r (fp #b1 #b10101001110 #b0000010111011010010011110110010000101110000010100000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
