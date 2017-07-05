(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2974700941454380132000778758083470165729522705078125p-120 {+ 1339686205147261 -120 (9.76108e-037)}
; Y = 1.4820090995676904466193946063867770135402679443359375p142 {+ 2170776001202239 142 (8.26248e+042)}
; 1.2974700941454380132000778758083470165729522705078125p-120 < 1.4820090995676904466193946063867770135402679443359375p142 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000111 #b0100110000100111000000000000010111100100100001111101)))
(assert (= y (fp #b0 #b10010001101 #b0111101101100100111100101100011100000100100000111111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
