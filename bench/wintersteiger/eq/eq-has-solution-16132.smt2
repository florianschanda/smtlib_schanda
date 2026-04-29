(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.712501958910676247427318230620585381984710693359375p-586 {+ 3208823556650870 -586 (6.76166e-177)}
; Y = 1.8437078041373700099114785189158283174037933349609375p-832 {+ 3799722152322639 -832 (6.43777e-251)}
; 1.712501958910676247427318230620585381984710693359375p-586 = 1.8437078041373700099114785189158283174037933349609375p-832 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110101 #b1011011001100110100001110100001111011011011101110110)))
(assert (= y (fp #b0 #b00010111111 #b1101011111111101001111000001001000100110011001001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
