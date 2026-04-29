(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6396048363108202128302082201116718351840972900390625p-759 {+ 2880524102473777 -759 (5.4072e-229)}
; Y = -1.8715228519739739443394910267670638859272003173828125p-413 {- 3924989991394861 -413 (-8.84722e-125)}
; 1.6396048363108202128302082201116718351840972900390625p-759 < -1.8715228519739739443394910267670638859272003173828125p-413 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001000 #b1010001110111101001001000111111001010001100000110001)))
(assert (= y (fp #b1 #b01001100010 #b1101111100011100000111110010001011110001111000101101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
