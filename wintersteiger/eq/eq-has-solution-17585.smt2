(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9527028440395588493316836320445872843265533447265625p-336 {+ 4290592173411369 -336 (1.39495e-101)}
; Y = -1.451800060856860863367501224274747073650360107421875p-674 {- 2034726585720926 -674 (-1.85221e-203)}
; 1.9527028440395588493316836320445872843265533447265625p-336 = -1.451800060856860863367501224274747073650360107421875p-674 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101111 #b1111001111100100010101010110010111110100110000101001)))
(assert (= y (fp #b1 #b00101011101 #b0111001110101001001010110011010110110110000001011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
