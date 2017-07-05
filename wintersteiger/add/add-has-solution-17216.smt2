(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6512809399646111163661998944007791578769683837890625p-492 {+ 2933108598538129 -492 (1.29141e-148)}
; Y = -1.9140162298288732056761318744975142180919647216796875p94 {- 4116363152067899 94 (-3.7911e+028)}
; 1.6512809399646111163661998944007791578769683837890625p-492 + -1.9140162298288732056761318744975142180919647216796875p94 == -1.9140162298288732056761318744975142180919647216796875p94
; [HW: -1.9140162298288732056761318744975142180919647216796875p94] 

; mpf : - 4116363152067899 94
; mpfd: - 4116363152067899 94 (-3.7911e+028) class: Neg. norm. non-zero
; hwf : - 4116363152067899 94 (-3.7911e+028) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010011 #b1010011010111010010110010000000110100111111110010001)))
(assert (= y (fp #b1 #b10001011101 #b1110100111111100111101111011011100100000110100111011)))
(assert (= r (fp #b1 #b10001011101 #b1110100111111100111101111011011100100000110100111011)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
