(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9529106661593294003154142046696506440639495849609375p468 {- 4291528121032527 468 (-1.4884e+141)}
; Y = 1.37505899308024748251000346499495208263397216796875p204 {+ 1689115541478156 204 (3.53542e+061)}
; -1.9529106661593294003154142046696506440639495849609375p468 = 1.37505899308024748251000346499495208263397216796875p204 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010011 #b1111001111110001111101000001001100101001111101001111)))
(assert (= y (fp #b0 #b10011001011 #b0110000000000011110111011011110101011001101100001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
