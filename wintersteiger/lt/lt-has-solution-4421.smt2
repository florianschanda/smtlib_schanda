(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.391375777473906172332362984889186918735504150390625p-291 {- 1762599805593322 -291 (-3.49716e-088)}
; Y = -1.21804994844429614886394119821488857269287109375p349 {- 982009666561888 349 (-1.3968e+105)}
; -1.391375777473906172332362984889186918735504150390625p-291 < -1.21804994844429614886394119821488857269287109375p349 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011100 #b0110010000110001001100111111010010110010011011101010)))
(assert (= y (fp #b1 #b10101011100 #b0011011111010010000111110001010101110110011101100000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
