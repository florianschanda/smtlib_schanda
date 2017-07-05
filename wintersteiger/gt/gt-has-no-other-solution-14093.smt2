(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9457519998514147818724495664355345070362091064453125p-606 {+ 4259288354115733 -606 (7.32673e-183)}
; Y = 1.1635778841599482280599886507843621075153350830078125p-1021 {+ 736689298148797 -1021 (5.17809e-308)}
; 1.9457519998514147818724495664355345070362091064453125p-606 > 1.1635778841599482280599886507843621075153350830078125p-1021 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100001 #b1111001000011100110011011001010101111101000010010101)))
(assert (= y (fp #b0 #b00000000010 #b0010100111100000001111010111111011010000110110111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
