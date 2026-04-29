(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2928218465457466113122109163668937981128692626953125p635 {- 1318752358989365 635 (-1.84326e+191)}
; Y = 1.3199842571559765591615587254636920988559722900390625p791 {+ 1441080981292081 791 (1.71908e+238)}
; -1.2928218465457466113122109163668937981128692626953125p635 = 1.3199842571559765591615587254636920988559722900390625p791 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111010 #b0100101011110110010111110101111001110111111000110101)))
(assert (= y (fp #b0 #b11100010110 #b0101000111101010011111001111111110111000010000110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
