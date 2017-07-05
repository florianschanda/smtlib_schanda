(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4940044044148976798425110246171243488788604736328125p-927 {- 2224798051642317 -927 (-1.31688e-279)}
; Y = -1.7696318238327444216650974340154789388179779052734375p516 {- 3466113595025623 516 (-3.7963e+155)}
; -1.4940044044148976798425110246171243488788604736328125p-927 < -1.7696318238327444216650974340154789388179779052734375p516 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100000 #b0111111001110111000100101001100100001010101111001101)))
(assert (= y (fp #b1 #b11000000011 #b1100010100000110100101110101100101010010100011010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
