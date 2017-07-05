(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3851491446774650828643871136591769754886627197265625p-37 {+ 1734557544451497 -37 (1.00783e-011)}
; Y = -1.1055619417767992285206446467782370746135711669921875p-739 {- 475408721650499 -739 (-3.82311e-223)}
; 1.3851491446774650828643871136591769754886627197265625p-37 > -1.1055619417767992285206446467782370746135711669921875p-739 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011010 #b0110001010011001001000100110010001111000110110101001)))
(assert (= y (fp #b1 #b00100011100 #b0001101100000110000110110111111110100010001101000011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
