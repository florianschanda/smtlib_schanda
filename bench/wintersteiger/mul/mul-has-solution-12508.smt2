(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.06445794689127382071092142723500728607177734375p-934 {+ 290292785600608 -934 (7.33014e-282)}
; Y = -1.37068223826106105889266473241150379180908203125p-416 {- 1669404390105376 -416 (-8.09951e-126)}
; 1.06445794689127382071092142723500728607177734375p-934 * -1.37068223826106105889266473241150379180908203125p-416 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011001 #b0001000010000000010100001110010111011101100001100000)))
(assert (= y (fp #b1 #b01001011111 #b0101111011100101000001111111101010001010000100100000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
