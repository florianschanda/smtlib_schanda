(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6054542697295468567375564816757105290889739990234375p654 {+ 2726723623543863 654 (1.20009e+197)}
; Y = -1.9768011753016363485357942408882081508636474609375p25 {- 4399121409103512 25 (-6.63304e+007)}
; 1.6054542697295468567375564816757105290889739990234375p654 = -1.9768011753016363485357942408882081508636474609375p25 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001101 #b1001101011111111000011010000111110110110010000110111)))
(assert (= y (fp #b1 #b10000011000 #b1111101000001111101001000100111010011101011010011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
