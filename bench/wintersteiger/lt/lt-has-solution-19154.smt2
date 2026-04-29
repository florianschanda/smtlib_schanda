(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1080416183960040132916446964372880756855010986328125p-832 {- 486576192348749 -832 (-3.86901e-251)}
; Y = -1.9810069327534216565567248835577629506587982177734375p774 {- 4418062456796183 774 (-1.96835e+233)}
; -1.1080416183960040132916446964372880756855010986328125p-832 < -1.9810069327534216565567248835577629506587982177734375p774 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111111 #b0001101110101000100111011001000110011110001001001101)))
(assert (= y (fp #b1 #b11100000101 #b1111101100100011010001010011010101010011010000010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
