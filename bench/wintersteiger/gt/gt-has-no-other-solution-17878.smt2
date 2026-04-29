(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.522730566439344013218715190305374562740325927734375p317 {+ 2354169184231398 317 (4.06567e+095)}
; Y = -1.39393537326712735335831894190050661563873291015625p324 {- 1774127200253892 324 (-4.76388e+097)}
; 1.522730566439344013218715190305374562740325927734375p317 > -1.39393537326712735335831894190050661563873291015625p324 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111100 #b1000010111010001101010111001111101111001111111100110)))
(assert (= y (fp #b1 #b10101000011 #b0110010011011000111100101101100011101011011111000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
