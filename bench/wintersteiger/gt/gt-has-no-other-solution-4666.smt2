(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2369522798847591982251969966455362737178802490234375p245 {- 1067138199393591 245 (-6.99362e+073)}
; Y = -zero {- 0 -1023 (-0)}
; -1.2369522798847591982251969966455362737178802490234375p245 > -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110100 #b0011110010101000111001111001010011010001010100110111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
