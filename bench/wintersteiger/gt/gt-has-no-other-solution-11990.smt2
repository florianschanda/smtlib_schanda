(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0255978954963145266532364985323511064052581787109375p149 {+ 115282672618671 149 (7.31891e+044)}
; Y = -1.8453983078258293648588050928083248436450958251953125p255 {- 3807335504104053 255 (-1.06841e+077)}
; 1.0255978954963145266532364985323511064052581787109375p149 > -1.8453983078258293648588050928083248436450958251953125p255 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010100 #b0000011010001101100101010110110000000000110010101111)))
(assert (= y (fp #b1 #b10011111110 #b1101100001101100000001100000010000110100101001110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
