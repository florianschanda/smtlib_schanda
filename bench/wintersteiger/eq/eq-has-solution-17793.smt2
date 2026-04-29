(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9957956686960629522076260400353930890560150146484375p223 {+ 4484665002476743 223 (2.69033e+067)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.9957956686960629522076260400353930890560150146484375p223 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011011110 #b1111111011101100011101110000011010001100010011000111)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
