(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9816847318593608928694038695539347827434539794921875p710 {- 4421114992597123 710 (-1.06741e+214)}
; Y = -1.2572887617481225408511136265587992966175079345703125p159 {- 1158725571535461 159 (-9.18765e+047)}
; -1.9816847318593608928694038695539347827434539794921875p710 < -1.2572887617481225408511136265587992966175079345703125p159 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000101 #b1111101101001111101100001100101001010001100010000011)))
(assert (= y (fp #b1 #b10010011110 #b0100000111011101101011010010000101010110001001100101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
