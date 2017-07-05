(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4236095637216357179255510345683433115482330322265625p569 {- 1907767873327337 569 (-2.7508e+171)}
; Y = 1.07083054989758164055047018337063491344451904296875p-687 {+ 318992438125196 -687 (1.66768e-207)}
; -1.4236095637216357179255510345683433115482330322265625p569 < 1.07083054989758164055047018337063491344451904296875p-687 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111000 #b0110110001110001101011010010011001110101000011101001)))
(assert (= y (fp #b0 #b00101010000 #b0001001000100001111100110110111101011110001010001100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
