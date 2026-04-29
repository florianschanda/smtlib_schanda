(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7441630261854121908271508800680749118328094482421875p718 {- 3351412327431523 718 (-2.40505e+216)}
; Y = -zero {- 0 -1023 (-0)}
; -1.7441630261854121908271508800680749118328094482421875p718 < -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001101 #b1011111010000001011101111101010001011011110101100011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
