(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.81330973290259311880845416453666985034942626953125p194 {- 3662821410036916 194 (-4.55293e+058)}
; Y = 1.0236294223188988627981643730890937149524688720703125p-404 {+ 106417457550373 -404 (2.47756e-122)}
; -1.81330973290259311880845416453666985034942626953125p194 < 1.0236294223188988627981643730890937149524688720703125p-404 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011000001 #b1101000000110101000100010001000001010101110010110100)))
(assert (= y (fp #b0 #b01001101011 #b0000011000001100100100111110110000010101010000100101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
