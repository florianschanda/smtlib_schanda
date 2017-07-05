(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2618427009721535636543876535142771899700164794921875p-1 {- 1179234690527875 -1 (-0.630921)}
; Y = 1.372178392758700571363306153216399252414703369140625p896 {+ 1676142470943434 896 (7.24914e+269)}
; -1.2618427009721535636543876535142771899700164794921875p-1 * 1.372178392758700571363306153216399252414703369140625p896 == -1.731473289334267473549289206857793033123016357421875p895
; [HW: -1.731473289334267473549289206857793033123016357421875p895] 

; mpf : - 3294262833277278 895
; mpfd: - 3294262833277278 895 (-4.57364e+269) class: Neg. norm. non-zero
; hwf : - 3294262833277278 895 (-4.57364e+269) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111110 #b0100001100001000000111111000110101011111001010000011)))
(assert (= y (fp #b0 #b11101111111 #b0101111101000111000101010100100100101101001011001010)))
(assert (= r (fp #b1 #b11101111110 #b1011101101000001110101010101111110010110100101011110)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
