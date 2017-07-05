(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.603289286825524850854662872734479606151580810546875p-263 {+ 2716973407344046 -263 (1.08174e-079)}
; Y = -1.9598186468919538416599834818043746054172515869140625p861 {- 4322638900485857 861 (-3.0133e+259)}
; 1.603289286825524850854662872734479606151580810546875p-263 / -1.9598186468919538416599834818043746054172515869140625p861 == -zero
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
(assert (= x (fp #b0 #b01011111000 #b1001101001110001001010101010110011110001010110101110)))
(assert (= y (fp #b1 #b11101011100 #b1111010110110110101011001100001001111101111011100001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
