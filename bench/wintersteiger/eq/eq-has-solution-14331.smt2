(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.275631187276582867440311019890941679477691650390625p479 {- 1241332512310506 479 (-1.9911e+144)}
; Y = -1.0912152422453169631211267187609337270259857177734375p-27 {- 410796930986519 -27 (-8.13019e-009)}
; -1.275631187276582867440311019890941679477691650390625p479 = -1.0912152422453169631211267187609337270259857177734375p-27 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011110 #b0100011010001111110000111111011100011100010011101010)))
(assert (= y (fp #b1 #b01111100100 #b0001011101011001111000011101001001010111001000010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
