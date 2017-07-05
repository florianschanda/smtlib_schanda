(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0436609004669747946536517702043056488037109375p739 {+ 196631215073728 739 (3.01805e+222)}
; Y = -1.97052029836036268761745304800570011138916015625p-769 {- 4370834854051232 -769 (-6.34621e-232)}
; 1.0436609004669747946536517702043056488037109375p739 > -1.97052029836036268761745304800570011138916015625p-769 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100010 #b0000101100101101010111000101101110011110100111000000)))
(assert (= y (fp #b1 #b00011111110 #b1111100001110100000001001010110110001111110110100000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
