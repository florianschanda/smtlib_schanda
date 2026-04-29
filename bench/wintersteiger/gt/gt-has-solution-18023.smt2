(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5587165797595616822945885360240936279296875p-249 {+ 2516235780410880 -249 (1.72305e-075)}
; Y = 1.343144221321891595977149336249567568302154541015625p510 {+ 1545384187279610 510 (4.50215e+153)}
; 1.5587165797595616822945885360240936279296875p-249 > 1.343144221321891595977149336249567568302154541015625p510 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000110 #b1000111100001000000011001011110111001100111000000000)))
(assert (= y (fp #b0 #b10111111101 #b0101011111011000010011001011100001100011100011111010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
