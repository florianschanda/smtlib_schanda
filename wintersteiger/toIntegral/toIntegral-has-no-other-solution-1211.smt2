(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0266202279134259978121690437546931207180023193359375 434 {- 119886848511423 434 (-4.55437e+130)}
; -1.0266202279134259978121690437546931207180023193359375 434 I == -1.0266202279134259978121690437546931207180023193359375 434
; [HW: -1.0266202279134259978121690437546931207180023193359375 434] 

; mpf : - 119886848511423 434
; mpfd: - 119886848511423 434 (-4.55437e+130) class: Neg. norm. non-zero
; hwf : - 119886848511423 434 (-4.55437e+130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110001 #b0000011011010000100101010101000001001100110110111111)))
(assert (= r (fp #b1 #b10110110001 #b0000011011010000100101010101000001001100110110111111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
