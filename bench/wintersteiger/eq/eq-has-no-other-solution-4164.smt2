(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3996998467046697367521801425027661025524139404296875p635 {- 1800088080679195 635 (-1.99564e+191)}
; Y = -1.3001687736077724988348336410126648843288421630859375p835 {- 1351839976968223 835 (-2.97883e+251)}
; -1.3996998467046697367521801425027661025524139404296875p635 = -1.3001687736077724988348336410126648843288421630859375p835 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111010 #b0110011001010010101110101010100111010000000100011011)))
(assert (= y (fp #b1 #b11101000010 #b0100110011010111110111000101100111101101000000011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
