(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.772340518886485138949637985206209123134613037109375p747 {+ 3478312473060310 747 (1.31206e+225)}
; Y = 1.1581107271648196643809569650329649448394775390625p-162 {+ 712067411942760 -162 (1.98103e-049)}
; 1.772340518886485138949637985206209123134613037109375p747 > 1.1581107271648196643809569650329649448394775390625p-162 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101010 #b1100010110111000000110111011010111111110001111010110)))
(assert (= y (fp #b0 #b01101011101 #b0010100001111001111100011101001001010001110101101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
