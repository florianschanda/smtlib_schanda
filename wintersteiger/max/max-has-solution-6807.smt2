(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7276989497910661963686607123236171901226043701171875p-830 {- 3277264719116947 -830 (-2.41308e-250)}
; Y = 1.524752049540641252178829745389521121978759765625p510 {+ 2363273134773136 510 (5.1109e+153)}
; -1.7276989497910661963686607123236171901226043701171875p-830 M 1.524752049540641252178829745389521121978759765625p510 == 1.524752049540641252178829745389521121978759765625p510
; [HW: 1.524752049540641252178829745389521121978759765625p510] 

; mpf : + 2363273134773136 510
; mpfd: + 2363273134773136 510 (5.1109e+153) class: Pos. norm. non-zero
; hwf : + 2363273134773136 510 (5.1109e+153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000001 #b1011101001001010011110100111011010101111101010010011)))
(assert (= y (fp #b0 #b10111111101 #b1000011001010110001001100111101101001001001110010000)))
(assert (= r (fp #b0 #b10111111101 #b1000011001010110001001100111101101001001001110010000)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
