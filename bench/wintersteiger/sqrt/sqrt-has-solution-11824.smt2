(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5889162938918699463641814872971735894680023193359375p980 {+ 2652243201723839 980 (1.62367e+295)}
; 1.5889162938918699463641814872971735894680023193359375p980 S == 1.26052223062184420854237032472155988216400146484375p490
; [HW: 1.26052223062184420854237032472155988216400146484375p490] 

; mpf : + 1173287820750268 490
; mpfd: + 1173287820750268 490 (4.02947e+147) class: Pos. norm. non-zero
; hwf : + 1173287820750268 490 (4.02947e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010011 #b1001011011000011001101111101111001011000110110111111)))
(assert (= r (fp #b0 #b10111101001 #b0100001010110001100101011011110001100110110110111100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
