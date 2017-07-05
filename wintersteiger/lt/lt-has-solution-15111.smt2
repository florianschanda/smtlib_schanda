(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9546640558197385661998168870923109352588653564453125p526 {+ 4299424686053781 526 (4.29388e+158)}
; Y = 1.3749475721283277440676329206326045095920562744140625p-948 {+ 1688613746120609 -948 (5.77897e-286)}
; 1.9546640558197385661998168870923109352588653564453125p526 < 1.3749475721283277440676329206326045095920562744140625p-948 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001101 #b1111010001100100110111010001001001101001100110010101)))
(assert (= y (fp #b0 #b00001001011 #b0101111111111100100100000110100000000001011110100001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
