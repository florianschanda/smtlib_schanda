(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5542603921823794355105974318576045334339141845703125p-23 {- 2496166895698789 -23 (-1.85282e-007)}
; Y = 1.3532514971501770073558645890443585813045501708984375p526 {+ 1590903310933607 526 (2.97274e+158)}
; -1.5542603921823794355105974318576045334339141845703125p-23 = 1.3532514971501770073558645890443585813045501708984375p526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101000 #b1000110111100100000000100101000111100100001101100101)))
(assert (= y (fp #b0 #b11000001101 #b0101101001101110101100001010101110000101111001100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
