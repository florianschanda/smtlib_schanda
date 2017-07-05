(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9714237691756963943845448739011771976947784423828125p527 {- 4374903724878509 527 (-8.66139e+158)}
; Y = -1.88318813452974342936840912443585693836212158203125p-61 {- 3977525753566196 -61 (-8.16703e-019)}
; -1.9714237691756963943845448739011771976947784423828125p527 > -1.88318813452974342936840912443585693836212158203125p-61 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001110 #b1111100010101111001110100110011100101010101010101101)))
(assert (= y (fp #b1 #b01111000010 #b1110001000011000100111100001101000000101001111110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
