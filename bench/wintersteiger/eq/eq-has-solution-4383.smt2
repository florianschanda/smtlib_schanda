(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1682191448519023690977292062598280608654022216796875p595 {+ 757591678071611 595 (1.51486e+179)}
; Y = -1.6156782707792947118008441975689493119716644287109375p-654 {- 2772768430861743 -654 (-2.16141e-197)}
; 1.1682191448519023690977292062598280608654022216796875p595 = -1.6156782707792947118008441975689493119716644287109375p-654 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010010 #b0010101100010000011010001110110110110011001100111011)))
(assert (= y (fp #b1 #b00101110001 #b1001110110011101000101110101010111011010110110101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
