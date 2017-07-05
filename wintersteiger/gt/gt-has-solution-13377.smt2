(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4120699685050652760764933191239833831787109375p428 {- 1855798156609984 428 (-9.78801e+128)}
; Y = 1.293969425366999548288049481925554573535919189453125p-408 {+ 1323920594541138 -408 (1.95743e-123)}
; -1.4120699685050652760764933191239833831787109375p428 > 1.293969425366999548288049481925554573535919189453125p-408 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110101011 #b0110100101111101011010101101111001100100100111000000)))
(assert (= y (fp #b0 #b01001100111 #b0100101101000001100101001000101111111001101001010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
