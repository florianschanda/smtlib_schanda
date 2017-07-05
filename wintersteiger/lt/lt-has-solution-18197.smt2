(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4240617486539959291036439026356674730777740478515625p258 {- 1909804333220217 258 (-6.5958e+077)}
; Y = 1.4115201723371273434537442881264723837375640869140625p670 {+ 1853322094792929 670 (6.91487e+201)}
; -1.4240617486539959291036439026356674730777740478515625p258 < 1.4115201723371273434537442881264723837375640869140625p670 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000001 #b0110110010001111010011111000110111110100000101111001)))
(assert (= y (fp #b0 #b11010011101 #b0110100101011001011000101101000111010101000011100001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
