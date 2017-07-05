(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7870314376717717497200510479160584509372711181640625p-775 {- 3544474489427457 -775 (-8.99261e-234)}
; Y = 1.5084211447030411168412911138148047029972076416015625p631 {+ 2289725277831897 631 (1.34416e+190)}
; -1.7870314376717717497200510479160584509372711181640625p-775 < 1.5084211447030411168412911138148047029972076416015625p631 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111000 #b1100100101111010111001000110110110111001011000000001)))
(assert (= y (fp #b0 #b11001110110 #b1000001000100111111000110101110100011000001011011001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
