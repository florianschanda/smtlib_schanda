(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3627473028256862352947109684464521706104278564453125p668 {+ 1633668617835413 668 (1.66899e+201)}
; Y = -1.871787074496702008019610730116255581378936767578125p159 {- 3926179943849762 159 (-1.36781e+048)}
; 1.3627473028256862352947109684464521706104278564453125p668 > -1.871787074496702008019610730116255581378936767578125p159 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011011 #b0101110011011101000000011101101001011001001110010101)))
(assert (= y (fp #b1 #b10010011110 #b1101111100101101011100000000111000001001111100100010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
