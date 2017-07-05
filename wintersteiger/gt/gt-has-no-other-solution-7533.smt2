(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9888011643617782286952433423721231520175933837890625p613 {+ 4453164555363217 613 (6.7605e+184)}
; Y = 1.53987911162857127322922679013572633266448974609375p169 {+ 2431399365955548 169 (1.15227e+051)}
; 1.9888011643617782286952433423721231520175933837890625p613 > 1.53987911162857127322922679013572633266448974609375p169 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100100 #b1111110100100010000100101011011100101110001110010001)))
(assert (= y (fp #b0 #b10010101000 #b1000101000110101100001000111100000111100111111011100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
