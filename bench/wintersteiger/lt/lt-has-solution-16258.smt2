(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.510718731542225246045063613564707338809967041015625p175 {- 2300072689064698 175 (-7.23491e+052)}
; Y = 1.6708418086615541842121501758811064064502716064453125p50 {+ 3021202919512725 50 (1.8812e+015)}
; -1.510718731542225246045063613564707338809967041015625p175 < 1.6708418086615541842121501758811064064502716064453125p50 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101110 #b1000001010111110011101100111100101101101101011111010)))
(assert (= y (fp #b0 #b10000110001 #b1010101110111100010010011110110011111101101010010101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
