(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6058531704292307029646735827554948627948760986328125p-973 {- 2728520112586317 -973 (-2.0115e-293)}
; Y = 1.3151028571317995297107472651987336575984954833984375p-893 {+ 1419097109962151 -893 (1.99147e-269)}
; -1.6058531704292307029646735827554948627948760986328125p-973 < 1.3151028571317995297107472651987336575984954833984375p-893 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110010 #b1001101100011001001100011000000100101011111001001101)))
(assert (= y (fp #b0 #b00010000010 #b0101000010101010100101001011001001000001110110100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
