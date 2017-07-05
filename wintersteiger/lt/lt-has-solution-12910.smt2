(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4271278084453855594659898997633717954158782958984375p169 {- 1923612638954215 169 (-1.0679e+051)}
; Y = -1.609694781508014482795942967641167342662811279296875p269 {- 2745821190809230 269 (-1.52691e+081)}
; -1.4271278084453855594659898997633717954158782958984375p169 < -1.609694781508014482795942967641167342662811279296875p269 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101000 #b0110110101011000001111111000000001111100001011100111)))
(assert (= y (fp #b1 #b10100001100 #b1001110000010100111101010000101100011110011010001110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
