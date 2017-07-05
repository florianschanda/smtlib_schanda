(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0497755362761191921805448146187700331211090087890625p641 {+ 224169086625297 641 (9.57908e+192)}
; Y = -1.4118607195711321278253080890863202512264251708984375p73 {- 1854855783189095 73 (-1.33346e+022)}
; 1.0497755362761191921805448146187700331211090087890625p641 > -1.4118607195711321278253080890863202512264251708984375p73 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000000 #b0000110010111110000101101110110001110010011000010001)))
(assert (= y (fp #b1 #b10001001000 #b0110100101101111101101000100000100010000101001100111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
