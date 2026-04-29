(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.700913820055568681510749229346401989459991455078125p396 {+ 3156635218821090 396 (2.74512e+119)}
; Y = -1.1315905301921898029604562907479703426361083984375p-700 {- 592631062739032 -700 (-2.15126e-211)}
; 1.700913820055568681510749229346401989459991455078125p396 < -1.1315905301921898029604562907479703426361083984375p-700 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110001011 #b1011001101101111000101101000111001110011111111100010)))
(assert (= y (fp #b1 #b00101000011 #b0010000110101111111010101011111110100011100001011000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
