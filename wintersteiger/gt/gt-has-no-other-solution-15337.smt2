(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.31511984103801804479871861985884606838226318359375p-911 {- 1419173598675868 -911 (-7.59695e-275)}
; Y = -1.6031019786814633132365770507021807134151458740234375p269 {- 2716129846456247 269 (-1.52065e+081)}
; -1.31511984103801804479871861985884606838226318359375p-911 > -1.6031019786814633132365770507021807134151458740234375p269 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110000 #b0101000010101011101100011010001110010100001110011100)))
(assert (= y (fp #b1 #b10100001100 #b1001101001100100111001000010101010010110111110110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
