(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2198316796731620836879983471590094268321990966796875p335 {- 990033870660283 335 (-8.53785e+100)}
; Y = -1.655276718188983142709957974147982895374298095703125p-651 {- 2951103983860466 -651 (-1.77151e-196)}
; -1.2198316796731620836879983471590094268321990966796875p335 < -1.655276718188983142709957974147982895374298095703125p-651 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001110 #b0011100001000110111000111001001011010010001010111011)))
(assert (= y (fp #b1 #b00101110100 #b1010011111000000001101110000101001110011101011110010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
