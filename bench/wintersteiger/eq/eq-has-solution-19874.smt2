(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7355634214638921974938057246617972850799560546875p440 {- 3312683150812152 440 (-4.92764e+132)}
; Y = -1.98990859602910408199250014149583876132965087890625p334 {- 4458151984207524 334 (-6.96389e+100)}
; -1.7355634214638921974938057246617972850799560546875p440 = -1.98990859602910408199250014149583876132965087890625p334 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110111 #b1011110001001101111000100110011101010010001111111000)))
(assert (= y (fp #b1 #b10101001101 #b1111110101101010101001100101010111111001011010100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
