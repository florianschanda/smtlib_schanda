(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0763777406090835331298194432747550308704376220703125p-506 {- 343974764146469 -506 (-5.13791e-153)}
; Y = 1.329126820034902234368701101629994809627532958984375p220 {+ 1482255424066822 220 (2.23957e+066)}
; -1.0763777406090835331298194432747550308704376220703125p-506 < 1.329126820034902234368701101629994809627532958984375p220 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000101 #b0001001110001101011111011101101000001110111100100101)))
(assert (= y (fp #b0 #b10011011011 #b0101010001000001101001111100000001001001010100000110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
