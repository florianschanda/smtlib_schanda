(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5433835205490453734711309152771718800067901611328125p-744 {- 2447181820663949 -744 (-1.66785e-224)}
; Y = -1.4610671642671120284973085290403105318546295166015625p-696 {- 2076461909186137 -696 (-4.4442e-210)}
; -1.5433835205490453734711309152771718800067901611328125p-744 < -1.4610671642671120284973085290403105318546295166015625p-696 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010111 #b1000101100011011001011101011000111110001100010001101)))
(assert (= y (fp #b1 #b00101000111 #b0111011000001000011111110110011111001001011001011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
