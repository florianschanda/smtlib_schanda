(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.09029684573870699892950142384506762027740478515625p-721 {- 406660840821572 -721 (-9.88366e-218)}
; Y = -1.48829842405248857772903647855855524539947509765625p387 {- 2199100600608388 387 (-4.69136e+116)}
; -1.09029684573870699892950142384506762027740478515625p-721 > -1.48829842405248857772903647855855524539947509765625p387 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101110 #b0001011100011101101100011010111101100001001101000100)))
(assert (= y (fp #b1 #b10110000010 #b0111110100000001001000000010000111111110011010000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
