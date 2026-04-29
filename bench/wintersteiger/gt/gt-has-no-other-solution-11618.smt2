(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.481102408650125656919271932565607130527496337890625p724 {- 2166692628323754 724 (-1.30708e+218)}
; Y = 1.62656646849471631099959267885424196720123291015625p-775 {+ 2821804514035652 -775 (8.18512e-234)}
; -1.481102408650125656919271932565607130527496337890625p724 > 1.62656646849471631099959267885424196720123291015625p-775 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010011 #b0111101100101001100001110000011100101101110110101010)))
(assert (= y (fp #b0 #b00011111000 #b1010000001100110101010001111101011110100011111000100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
