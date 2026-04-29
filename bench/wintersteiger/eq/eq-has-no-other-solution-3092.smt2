(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4283421596160963407129429469932802021503448486328125p-41 {- 1929081590434125 -41 (-6.49535e-013)}
; Y = 1.0764627986777191015477228575036861002445220947265625p733 {+ 344357831632681 733 (4.86391e+220)}
; -1.4283421596160963407129429469932802021503448486328125p-41 = 1.0764627986777191015477228575036861002445220947265625p733 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010110 #b0110110110100111110101001110111100001100100101001101)))
(assert (= y (fp #b0 #b11011011100 #b0001001110010011000100001110001110101110011100101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
