(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4795839859761696910567252416512928903102874755859375 750 {- 2159854260535135 750 (-8.76267e+225)}
; -1.4795839859761696910567252416512928903102874755859375 750 I == -1.4795839859761696910567252416512928903102874755859375 750
; [HW: -1.4795839859761696910567252416512928903102874755859375 750] 

; mpf : - 2159854260535135 750
; mpfd: - 2159854260535135 750 (-8.76267e+225) class: Neg. norm. non-zero
; hwf : - 2159854260535135 750 (-8.76267e+225) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101101 #b0111101011000110000001000001111101110011111101011111)))
(assert (= r (fp #b1 #b11011101101 #b0111101011000110000001000001111101110011111101011111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
