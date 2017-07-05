(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2497656433545014653674343207967467606067657470703125p262 {+ 1124844458341285 262 (9.26163e+078)}
; Y = -1.003452976918785655158217196003533899784088134765625p-23 {- 15550825564762 -23 (-1.19621e-007)}
; 1.2497656433545014653674343207967467606067657470703125p262 * -1.003452976918785655158217196003533899784088134765625p-23 == -1.2540810552748957729107814884628169238567352294921875p239
; [HW: -1.2540810552748957729107814884628169238567352294921875p239] 

; mpf : - 1144279345857923 239
; mpfd: - 1144279345857923 239 (-1.10788e+072) class: Neg. norm. non-zero
; hwf : - 1144279345857923 239 (-1.10788e+072) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000101 #b0011111111110000101001000010010111011111001110100101)))
(assert (= y (fp #b1 #b01111101000 #b0000000011100010010010110101011011110000101001011010)))
(assert (= r (fp #b1 #b10011101110 #b0100000100001011011101001011111011110000010110000011)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
