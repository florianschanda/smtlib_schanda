(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.31075977478951788413041867897845804691314697265625p796 {+ 1399537605943812 796 (5.4626e+239)}
; Y = -1.24619584007268002778801019303500652313232421875p-481 {- 1108767493611488 -481 (-1.99599e-145)}
; 1.31075977478951788413041867897845804691314697265625p796 > -1.24619584007268002778801019303500652313232421875p-481 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011011 #b0100111110001101111100111101110110100010001000000100)))
(assert (= y (fp #b1 #b01000011110 #b0011111100000110101100001100100110000101111111100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
