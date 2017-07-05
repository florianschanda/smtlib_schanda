(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6348237735854829200121685062185861170291900634765625p-556 {- 2858992110165513 -556 (-6.93096e-168)}
; Y = 1.3875881148421631561262756804353557527065277099609375p376 {+ 1745541689576399 376 (2.13569e+113)}
; -1.6348237735854829200121685062185861170291900634765625p-556 > 1.3875881148421631561262756804353557527065277099609375p376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010011 #b1010001010000011110011111001001001000101111000001001)))
(assert (= y (fp #b0 #b10101110111 #b0110001100111000111110011000010110010000101111001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
