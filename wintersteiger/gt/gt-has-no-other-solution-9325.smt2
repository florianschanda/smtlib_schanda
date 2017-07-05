(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1483568012847957806599197283503599464893341064453125p306 {- 668139634984085 306 (-1.49712e+092)}
; Y = 1.090229275594958746609108857228420674800872802734375p-68 {+ 406356531947366 -68 (3.69384e-021)}
; -1.1483568012847957806599197283503599464893341064453125p306 > 1.090229275594958746609108857228420674800872802734375p-68 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100110001 #b0010010111111010101101100001100110101000010010010101)))
(assert (= y (fp #b0 #b01110111011 #b0001011100011001010001000000101111010010011101100110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
