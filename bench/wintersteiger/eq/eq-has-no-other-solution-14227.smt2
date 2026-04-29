(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.756379696982881544187193867401219904422760009765625p318 {- 3406431321482714 318 (-9.37901e+095)}
; Y = 1.72045028888816187162547066691331565380096435546875p-878 {+ 3244619652575692 -878 (8.53701e-265)}
; -1.756379696982881544187193867401219904422760009765625p318 = 1.72045028888816187162547066691331565380096435546875p-878 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111101 #b1100000110100010000110011000110111100110010111011010)))
(assert (= y (fp #b0 #b00010010001 #b1011100001101111011011100001110100101011000111001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
