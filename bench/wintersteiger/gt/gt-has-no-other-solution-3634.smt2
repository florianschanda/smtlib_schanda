(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7385005818445424807805466116406023502349853515625p250 {- 3325910945207976 250 (-3.14538e+075)}
; Y = 1.7351046614094725040189359788200818002223968505859375p-453 {+ 3310617079202015 -453 (7.45998e-137)}
; -1.7385005818445424807805466116406023502349853515625p250 > 1.7351046614094725040189359788200818002223968505859375p-453 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111001 #b1011110100001110010111111100011100011001011010101000)))
(assert (= y (fp #b0 #b01000111010 #b1011110000101111110100011010111111100100000011011111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
