(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.3946682485405068607775547206983901560306549072265625p762 {- 1777427777061993 762 (-3.3832e+229)}
; -zero = -1.3946682485405068607775547206983901560306549072265625p762 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11011111001 #b0110010100001000111110100111010001000000010001101001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
