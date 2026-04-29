(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.96679680341373686047745650284923613071441650390625p-782 {+ 4354065723597092 -782 (7.7322e-236)}
; Y = -1.25613813751741165702924263314343988895416259765625p584 {- 1153543620678788 584 (-7.95344e+175)}
; 1.96679680341373686047745650284923613071441650390625p-782 > -1.25613813751741165702924263314343988895416259765625p584 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110001 #b1111011101111111111111101100110010001010000100100100)))
(assert (= y (fp #b1 #b11001000111 #b0100000110010010010001001101101111100101010010000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
