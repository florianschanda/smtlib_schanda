(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.915176537155396818690178406541235744953155517578125p532 {+ 4121588711711266 532 (2.69257e+160)}
; Y = 1.0321186421600614391280714698950760066509246826171875p-745 {+ 144649504863699 -745 (5.57677e-225)}
; 1.915176537155396818690178406541235744953155517578125p532 > 1.0321186421600614391280714698950760066509246826171875p-745 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000010011 #b1110101001001001000000100111000100100110001000100010)))
(assert (= y (fp #b0 #b00100010110 #b0000100000111000111011010110010110101011010111010011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
