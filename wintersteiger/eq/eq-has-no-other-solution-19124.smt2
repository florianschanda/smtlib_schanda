(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.55477217276844470461583114229142665863037109375p-879 {+ 2498471750555488 -879 (3.85745e-265)}
; Y = -1.779135437564646426977787996293045580387115478515625p-976 {- 3508914066287290 -976 (-2.78569e-294)}
; 1.55477217276844470461583114229142665863037109375p-879 = -1.779135437564646426977787996293045580387115478515625p-976 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010010000 #b1000111000000101100011001001001011000101011101100000)))
(assert (= y (fp #b1 #b00000101111 #b1100011101110101011010111000011101111110101010111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
