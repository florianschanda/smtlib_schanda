(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.586968493536561997103717658319510519504547119140625p-987 {- 2643471088769482 -987 (-1.21328e-297)}
; Y = 1.0943143957219623185750378979719243943691253662109375p148 {+ 424754277429103 148 (3.90464e+044)}
; -1.586968493536561997103717658319510519504547119140625p-987 = 1.0943143957219623185750378979719243943691253662109375p148 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100100 #b1001011001000011100100010011001110000101100111001010)))
(assert (= y (fp #b0 #b10010010011 #b0001100000100100111111001111110100101010111101101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
