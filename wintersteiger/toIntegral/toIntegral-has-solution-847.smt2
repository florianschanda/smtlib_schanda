(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8664831741010285970361337604117579758167266845703125 716 {+ 3902293300004197 716 (6.4343e+215)}
; 1.8664831741010285970361337604117579758167266845703125 716 I == 1.8664831741010285970361337604117579758167266845703125 716
; [HW: 1.8664831741010285970361337604117579758167266845703125 716] 

; mpf : + 3902293300004197 716
; mpfd: + 3902293300004197 716 (6.4343e+215) class: Pos. norm. non-zero
; hwf : + 3902293300004197 716 (6.4343e+215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001011 #b1101110111010001110101110101111101001100010101100101)))
(assert (= r (fp #b0 #b11011001011 #b1101110111010001110101110101111101001100010101100101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
