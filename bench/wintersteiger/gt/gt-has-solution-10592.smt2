(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.565617233191819224202845362015068531036376953125p-458 {- 2547313560637008 -458 (-2.10352e-138)}
; Y = 1.088914560645878992772850324399769306182861328125p155 {+ 400435582192592 155 (4.97328e+046)}
; -1.565617233191819224202845362015068531036376953125p-458 > 1.088914560645878992772850324399769306182861328125p155 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000110101 #b1001000011001100010010100111111010011100111001010000)))
(assert (= y (fp #b0 #b10010011010 #b0001011011000011000110101100101000011100101111010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
