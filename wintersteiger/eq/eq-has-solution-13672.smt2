(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.172998716837349686414881944074295461177825927734375p-348 {+ 779116956684262 -348 (2.04578e-105)}
; Y = 1.5480799457090610449228051948011852800846099853515625p-923 {+ 2468332639264569 -923 (2.18327e-278)}
; 1.172998716837349686414881944074295461177825927734375p-348 = 1.5480799457090610449228051948011852800846099853515625p-923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010100011 #b0010110001001001101001001101011100010000111111100110)))
(assert (= y (fp #b0 #b00001100100 #b1000110001001110111101111010001001101001111100111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
