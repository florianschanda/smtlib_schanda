(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5159900956805432148399859215714968740940093994140625p-927 {- 2323812802633761 -927 (-1.33626e-279)}
; Y = -1.50930458657791799481628913781605660915374755859375p763 {- 2293703946330396 763 (-7.32257e+229)}
; -1.5159900956805432148399859215714968740940093994140625p-927 < -1.50930458657791799481628913781605660915374755859375p763 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100000 #b1000010000010111111011010100101000000010000000100001)))
(assert (= y (fp #b1 #b11011111010 #b1000001001100001110010010000111100001110000100011100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
