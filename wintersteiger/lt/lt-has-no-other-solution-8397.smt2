(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.18105950203442944257403723895549774169921875p279 {+ 815419505894144 279 (1.1472e+084)}
; Y = -1.8461188670990187343790012164390645921230316162109375p-599 {- 3810580614578287 -599 (-8.898e-181)}
; 1.18105950203442944257403723895549774169921875p279 < -1.8461188670990187343790012164390645921230316162109375p-599 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010110 #b0010111001011001111010100101111111011110001100000000)))
(assert (= y (fp #b1 #b00110101000 #b1101100010011011001111101111111010111000000001101111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
