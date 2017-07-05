(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9159789622472647163675674164551310241222381591796875p279 {+ 4125202513055995 279 (1.86106e+084)}
; Y = 1.9836621945544237188840952512691728770732879638671875p183 {+ 4430020692853747 183 (2.43196e+055)}
; 1.9159789622472647163675674164551310241222381591796875p279 > 1.9836621945544237188840952512691728770732879638671875p183 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010110 #b1110101001111101100110001110011010101101000011111011)))
(assert (= y (fp #b0 #b10010110110 #b1111101111010001010010010001101111101100001111110011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
