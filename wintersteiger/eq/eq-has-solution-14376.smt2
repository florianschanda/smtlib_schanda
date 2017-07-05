(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.337604498581210332730506706866435706615447998046875p641 {+ 1520435494008942 641 (1.22055e+193)}
; Y = 1.6482022440751371572531525089289061725139617919921875p-112 {+ 2919243384877507 -112 (3.17432e-034)}
; 1.337604498581210332730506706866435706615447998046875p641 = 1.6482022440751371572531525089289061725139617919921875p-112 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000000 #b0101011001101101001111111001100001100011100001101110)))
(assert (= y (fp #b0 #b01110001111 #b1010010111110000100101010000111101111111000111000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
