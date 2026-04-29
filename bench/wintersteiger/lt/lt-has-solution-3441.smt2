(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5809512861918320059118059361935593187808990478515625p-60 {- 2616371996013945 -60 (-1.37126e-018)}
; Y = 1.3871941675121064463382936082780361175537109375p655 {+ 1743767508527552 655 (2.07388e+197)}
; -1.5809512861918320059118059361935593187808990478515625p-60 < 1.3871941675121064463382936082780361175537109375p655 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000011 #b1001010010111001001110010011011011000011010101111001)))
(assert (= y (fp #b0 #b11010001110 #b0110001100011111001010000010111010101010100111000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
