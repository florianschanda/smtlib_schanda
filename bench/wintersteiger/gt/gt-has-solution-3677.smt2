(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0831310024925391299888133289641700685024261474609375p-124 {+ 374388751848335 -124 (5.09286e-038)}
; Y = 1.73120464937069140631820118869654834270477294921875p-320 {+ 3293052986437420 -320 (8.10494e-097)}
; 1.0831310024925391299888133289641700685024261474609375p-124 > 1.73120464937069140631820118869654834270477294921875p-320 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000011 #b0001010101001000000100101100100011111101001110001111)))
(assert (= y (fp #b0 #b01010111111 #b1011101100110000001110100101011110111010111100101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
