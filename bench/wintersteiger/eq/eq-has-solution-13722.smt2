(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4059649115633592320051548085757531225681304931640625p722 {+ 1828303424442241 722 (3.10193e+217)}
; Y = 1.9717631082886428739442408186732791364192962646484375p715 {+ 4376431972381127 715 (3.39861e+215)}
; 1.4059649115633592320051548085757531225681304931640625p722 = 1.9717631082886428739442408186732791364192962646484375p715 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010001 #b0110011111101101010100010000001001111100111110000001)))
(assert (= y (fp #b0 #b11011001010 #b1111100011000101011101111001000110001111000111000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
