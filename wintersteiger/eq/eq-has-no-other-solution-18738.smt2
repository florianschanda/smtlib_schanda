(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5281960029191890004796050561708398163318634033203125p-129 {- 2378783321925445 -129 (-2.24548e-039)}
; Y = -1.765434893947544825465456597157754004001617431640625p616 {- 3447212303158538 616 (-4.80097e+185)}
; -1.5281960029191890004796050561708398163318634033203125p-129 = -1.765434893947544825465456597157754004001617431640625p616 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101111110 #b1000011100110111110110100110111001101010011101000101)))
(assert (= y (fp #b1 #b11001100111 #b1100001111110011100010101000110010111000110100001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
