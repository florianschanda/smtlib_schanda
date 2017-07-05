(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6590917298786040934288621429004706442356109619140625p-524 {+ 2968285269084257 -524 (3.02101e-158)}
; Y = -1.3673143678369950038131719338707625865936279296875p-406 {- 1654236850118520 -406 (-8.27352e-123)}
; 1.6590917298786040934288621429004706442356109619140625p-524 < -1.3673143678369950038131719338707625865936279296875p-406 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110011 #b1010100010111010001111000101000011100100100001100001)))
(assert (= y (fp #b1 #b01001101001 #b0101111000001000010100000111110100110101111101111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
