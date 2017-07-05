(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5513163134326111158856065230793319642543792724609375 934 {- 2482907943738383 934 (-2.25277e+281)}
; -1.5513163134326111158856065230793319642543792724609375 934 I == -1.5513163134326111158856065230793319642543792724609375 934
; [HW: -1.5513163134326111158856065230793319642543792724609375 934] 

; mpf : - 2482907943738383 934
; mpfd: - 2482907943738383 934 (-2.25277e+281) class: Neg. norm. non-zero
; hwf : - 2482907943738383 934 (-2.25277e+281) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100101 #b1000110100100011000100001101111111110001110000001111)))
(assert (= r (fp #b1 #b11110100101 #b1000110100100011000100001101111111110001110000001111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
