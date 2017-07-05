(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5329625038693530658662211862974800169467926025390625p957 {+ 2400249733828465 957 (1.8674e+288)}
; Y = -1.24970274749683252224485840997658669948577880859375p1011 {- 1124561200580124 1011 (-2.74241e+304)}
; 1.5329625038693530658662211862974800169467926025390625p957 < -1.24970274749683252224485840997658669948577880859375p1011 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111100 #b1000100001110000001110110000110000011100111101110001)))
(assert (= y (fp #b1 #b11111110010 #b0011111111101100100001001110111000111000011000011100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
