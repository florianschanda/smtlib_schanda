(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.22823085140336107912162333377636969089508056640625p726 {- 1027860377334628 726 (-4.33568e+218)}
; Y = -1.673498830814441173941986562567763030529022216796875p-93 {- 3033169083490382 -93 (-1.6898e-028)}
; -1.22823085140336107912162333377636969089508056640625p726 < -1.673498830814441173941986562567763030529022216796875p-93 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010101 #b0011101001101101010101100100101010110111001101100100)))
(assert (= y (fp #b1 #b01110100010 #b1010110001101010011010110101110000111110000001001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
