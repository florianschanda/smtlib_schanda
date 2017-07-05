(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.241331830244027489840163980261422693729400634765625p-968 {+ 1086861940759642 -968 (4.97568e-292)}
; Y = 1.850847411880349735469053484848700463771820068359375p-347 {+ 3831876087093494 -347 (6.45598e-105)}
; 1.241331830244027489840163980261422693729400634765625p-968 = 1.850847411880349735469053484848700463771820068359375p-347 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110111 #b0011110111000111111011000011111001100001110001011010)))
(assert (= y (fp #b0 #b01010100100 #b1101100111010001001000101100111111101001100011110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
