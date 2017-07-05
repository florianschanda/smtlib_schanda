(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.051702860782099069325568052590824663639068603515625p-785 {+ 232848984552250 -785 (5.16829e-237)}
; Y = -1.8803584440424121471124863091972656548023223876953125p664 {- 3964781960541877 664 (-1.43932e+200)}
; 1.051702860782099069325568052590824663639068603515625p-785 > -1.8803584440424121471124863091972656548023223876953125p664 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101110 #b0000110100111100011001100001000000101011001100111010)))
(assert (= y (fp #b1 #b11010010111 #b1110000101011111001010111100010111101011011010110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
