(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3956784311223628947118413634598255157470703125p459 {- 1781977234961216 459 (-2.07756e+138)}
; Y = -1.858608958090336660262664736364968121051788330078125p-455 {- 3866830983712610 -455 (-1.99774e-137)}
; -1.3956784311223628947118413634598255157470703125p459 > -1.858608958090336660262664736364968121051788330078125p-455 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111001010 #b0110010101001011001011101000000101100111001101000000)))
(assert (= y (fp #b1 #b01000111000 #b1101101111001101110010111111001100001100111101100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
