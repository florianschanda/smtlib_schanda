(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7151050516212540397731345365173183381557464599609375p-185 {- 3220546844012239 -185 (-3.49737e-056)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.7151050516212540397731345365173183381557464599609375p-185 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101000110 #b1011011100010001000111111110100111101010111011001111)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
