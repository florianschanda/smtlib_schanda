(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6376539510795564691392200984410010278224945068359375p-673 {+ 2871738096473215 -673 (4.17864e-203)}
; Y = 1.738185166840647610797532252036035060882568359375p934 {+ 3324490442313968 934 (2.52413e+281)}
; 1.6376539510795564691392200984410010278224945068359375p-673 < 1.738185166840647610797532252036035060882568359375p934 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101011110 #b1010001100111101010010100001001000001101010001111111)))
(assert (= y (fp #b0 #b11110100101 #b1011110011111001101100111111110111111001000011110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
