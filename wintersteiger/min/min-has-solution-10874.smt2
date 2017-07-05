(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.787398037694710506428918961319141089916229248046875p302 {- 3546125509154158 302 (-1.4564e+091)}
; Y = 1.85087029241192180251118770684115588665008544921875p-465 {+ 3831979131846956 -465 (1.9428e-140)}
; -1.787398037694710506428918961319141089916229248046875p302 m 1.85087029241192180251118770684115588665008544921875p-465 == -1.787398037694710506428918961319141089916229248046875p302
; [HW: -1.787398037694710506428918961319141089916229248046875p302] 

; mpf : - 3546125509154158 302
; mpfd: - 3546125509154158 302 (-1.4564e+091) class: Neg. norm. non-zero
; hwf : - 3546125509154158 302 (-1.4564e+091) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100101101 #b1100100110010010111010101111010011010101010101101110)))
(assert (= y (fp #b0 #b01000101110 #b1101100111010010101000101010111100001100000100101100)))
(assert (= r (fp #b1 #b10100101101 #b1100100110010010111010101111010011010101010101101110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
