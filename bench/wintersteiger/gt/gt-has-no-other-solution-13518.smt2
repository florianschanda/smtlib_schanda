(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6952361069124373127436911090626381337642669677734375p888 {+ 3131065072025367 888 (3.49837e+267)}
; Y = 1.20557500087909108543726688367314636707305908203125p-600 {+ 925827497355764 -600 (2.90534e-181)}
; 1.6952361069124373127436911090626381337642669677734375p888 > 1.20557500087909108543726688367314636707305908203125p-600 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101110111 #b1011000111111010111111100101011000101111111100010111)))
(assert (= y (fp #b0 #b00110100111 #b0011010010100000100100000011000110100110100111110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
