(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.75415181705333633743748578126542270183563232421875p-897 {- 3396397842262188 -897 (-1.6602e-270)}
; Y = -1.24998733993162947086830172338522970676422119140625p-656 {- 1125842890963428 -656 (-4.1805e-198)}
; -1.75415181705333633743748578126542270183563232421875p-897 < -1.24998733993162947086830172338522970676422119140625p-656 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111110 #b1100000100010000000101111110111001110110100010101100)))
(assert (= y (fp #b1 #b00101101111 #b0011111111111111001010111001100101101011100111100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
