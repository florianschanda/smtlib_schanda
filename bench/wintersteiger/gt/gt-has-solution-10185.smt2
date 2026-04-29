(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.72091142794878937394287277129478752613067626953125p553 {- 3246696438277300 553 (-5.07395e+166)}
; Y = 1.0461555232189001518605664386996068060398101806640625p-984 {+ 207865997169729 -984 (6.39853e-297)}
; -1.72091142794878937394287277129478752613067626953125p553 > 1.0461555232189001518605664386996068060398101806640625p-984 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101000 #b1011100010001101101001101011111001011010010010110100)))
(assert (= y (fp #b0 #b00000100111 #b0000101111010000110110010010111011000001010001000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
