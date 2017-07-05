(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.739681530352248817195004448876716196537017822265625p587 {- 3331229464467226 587 (-8.81206e+176)}
; Y = -1.2234097063196049948174959354219026863574981689453125p885 {- 1006147870131925 885 (-3.15586e+266)}
; -1.739681530352248817195004448876716196537017822265625p587 < -1.2234097063196049948174959354219026863574981689453125p885 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001010 #b1011110101011011110001001100111001010001011100011010)))
(assert (= y (fp #b1 #b11101110100 #b0011100100110001011000001110011001000000011011010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
