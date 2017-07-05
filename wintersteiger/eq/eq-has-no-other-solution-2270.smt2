(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9256882363406615521483900010935030877590179443359375p55 {+ 4168929196245055 55 (6.93802e+016)}
; Y = -1.0541805459710076320334337651729583740234375p390 {- 244007486645760 390 (-2.65836e+117)}
; 1.9256882363406615521483900010935030877590179443359375p55 = -1.0541805459710076320334337651729583740234375p390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110110 #b1110110011111001111001110111110101100000000000111111)))
(assert (= y (fp #b1 #b10110000101 #b0000110111011110110001101011100100000110011000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
