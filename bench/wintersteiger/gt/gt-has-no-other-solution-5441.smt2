(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6326243407750953284818251631804741919040679931640625p-458 {+ 2849086745380225 -458 (2.19355e-138)}
; Y = 1.47894531456794720014613631065003573894500732421875p102 {+ 2156977940219052 102 (7.49914e+030)}
; 1.6326243407750953284818251631804741919040679931640625p-458 > 1.47894531456794720014613631065003573894500732421875p102 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110101 #b1010000111110011101010110011011001001000010110000001)))
(assert (= y (fp #b0 #b10001100101 #b0111101010011100001010001111111010100100010010101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
