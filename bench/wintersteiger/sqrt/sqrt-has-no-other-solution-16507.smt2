(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1035033525334150272811939430539496243000030517578125p-521 {+ 466137659901085 -521 (1.60748e-157)}
; 1.1035033525334150272811939430539496243000030517578125p-521 S == 1.4855997795728261845482620628899894654750823974609375p-261
; [HW: 1.4855997795728261845482620628899894654750823974609375p-261] 

; mpf : + 2186946986335375 -261
; mpfd: + 2186946986335375 -261 (4.00934e-079) class: Pos. norm. non-zero
; hwf : + 2186946986335375 -261 (4.00934e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110110 #b0001101001111111001100100001101000101000010010011101)))
(assert (= r (fp #b0 #b01011111010 #b0111110001010000010001000110010000110101110010001111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
