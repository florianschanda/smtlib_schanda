(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3152285734687032547896023970679379999637603759765625p-815 {+ 1419663286010185 -815 (6.01942e-246)}
; Y = -1.38022929135873173578374917269684374332427978515625p146 {- 1712400494878532 146 (-1.23121e+044)}
; 1.3152285734687032547896023970679379999637603759765625p-815 > -1.38022929135873173578374917269684374332427978515625p146 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010000 #b0101000010110010110100011101110111010000000101001001)))
(assert (= y (fp #b1 #b10010010001 #b0110000101010110101101001111001101011101111101000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
