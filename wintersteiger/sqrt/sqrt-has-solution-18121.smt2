(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.94568112485804167732794667244888842105865478515625p281 {+ 4258969161521988 281 (7.55963e+084)}
; 1.94568112485804167732794667244888842105865478515625p281 S == 1.9726536061143840061760101889376528561115264892578125p140
; [HW: 1.9726536061143840061760101889376528561115264892578125p140] 

; mpf : + 4380442418057309 140
; mpfd: + 4380442418057309 140 (2.74948e+042) class: Pos. norm. non-zero
; hwf : + 4380442418057309 140 (2.74948e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011000 #b1111001000011000001010000111111110110101101101000100)))
(assert (= r (fp #b0 #b10010001011 #b1111100011111111110100111010010010011001000001011101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
