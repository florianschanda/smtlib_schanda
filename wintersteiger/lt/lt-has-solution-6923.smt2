(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9639193098878833243503549965680576860904693603515625p745 {- 4341106644826297 745 (-3.63472e+224)}
; Y = -1.6830827460497064240740883178659714758396148681640625p445 {- 3076331200572673 445 (-1.52916e+134)}
; -1.9639193098878833243503549965680576860904693603515625p745 < -1.6830827460497064240740883178659714758396148681640625p445 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101000 #b1111011011000011011010100111011111110011100010111001)))
(assert (= y (fp #b1 #b10110111100 #b1010111011011110100000101100011010111110110100000001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
