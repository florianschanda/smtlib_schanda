(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.20794923960697619946813574642874300479888916015625p-687 {- 936520118005956 -687 (-1.88123e-207)}
; Y = -1.9467558897938277429062736700871028006076812744140625p1022 {- 4263809472486305 1022 (-8.74917e+307)}
; -1.20794923960697619946813574642874300479888916015625p-687 = -1.9467558897938277429062736700871028006076812744140625p1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010000 #b0011010100111100001010010100111101010111000011000100)))
(assert (= y (fp #b1 #b11111111101 #b1111001001011110100110000000111111110101101110100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
