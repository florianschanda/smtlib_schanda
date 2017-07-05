(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.415534153115020732371931444504298269748687744140625p-1009 {- 1871399457128522 -1009 (-2.58021e-304)}
; Y = -1.120825785417510989105949192889966070652008056640625p1010 {- 544150962183050 1010 (-1.2298e+304)}
; -1.415534153115020732371931444504298269748687744140625p-1009 > -1.120825785417510989105949192889966070652008056640625p1010 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001110 #b0110101001100000011100100011111000000000000001001010)))
(assert (= y (fp #b1 #b11111110001 #b0001111011101110011100000100110011100001101110001010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
