(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5767918153998567998286262081819586455821990966796875p934 {- 2597639404905147 934 (-2.28976e+281)}
; Y = 1.1987580079475936845057049140450544655323028564453125p162 {+ 895126490529685 162 (7.00795e+048)}
; -1.5767918153998567998286262081819586455821990966796875p934 > 1.1987580079475936845057049140450544655323028564453125p162 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100101 #b1001001110101000101000001101111110111110001010111011)))
(assert (= y (fp #b0 #b10010100001 #b0011001011100001110011100000011111110011111110010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
