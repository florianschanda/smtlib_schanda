(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.131546886589856359961459020269103348255157470703125p-119 {+ 592434509427826 -119 (1.70256e-036)}
; Y = -1.6675679326016343839711453256313689053058624267578125p-412 {- 3006458692509213 -412 (-1.57661e-124)}
; 1.131546886589856359961459020269103348255157470703125p-119 > -1.6675679326016343839711453256313689053058624267578125p-412 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001000 #b0010000110101101000011101000011111001011010001110010)))
(assert (= y (fp #b1 #b01001100011 #b1010101011100101101110110110011001100001111000011101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
