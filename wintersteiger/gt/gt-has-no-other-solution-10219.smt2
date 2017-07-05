(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.919968186114249686369248593109659850597381591796875p-576 {- 4143168380176846 -576 (-7.76277e-174)}
; Y = 1.926585275344882663972612135694362223148345947265625p12 {+ 4172969100770202 12 (7891.29)}
; -1.919968186114249686369248593109659850597381591796875p-576 > 1.926585275344882663972612135694362223148345947265625p12 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110111111 #b1110101110000011000010001111100010111000100111001110)))
(assert (= y (fp #b0 #b10000001011 #b1110110100110100101100010100111010001111101110011010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
