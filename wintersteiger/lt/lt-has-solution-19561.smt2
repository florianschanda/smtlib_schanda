(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.28504802136686446800695193815045058727264404296875p-403 {- 1283742162810508 -403 (-6.22058e-122)}
; Y = -1.4784646401025252071548266030731610953807830810546875p83 {- 2154813174875691 83 (-1.42988e+025)}
; -1.28504802136686446800695193815045058727264404296875p-403 < -1.4784646401025252071548266030731610953807830810546875p83 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001101100 #b0100100011111000111010000011100110001111011010001100)))
(assert (= y (fp #b1 #b10001010010 #b0111101001111100101010001001110110001000011000101011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
