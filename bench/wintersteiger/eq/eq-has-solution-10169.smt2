(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6734854652922310780382986195036210119724273681640625p-304 {- 3033108890529537 -304 (-5.13456e-092)}
; Y = -1.889617712149267436672062103752978146076202392578125p-74 {- 4006481996937634 -74 (-1.00036e-022)}
; -1.6734854652922310780382986195036210119724273681640625p-304 = -1.889617712149267436672062103752978146076202392578125p-74 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001111 #b1010110001101001100010110001111111000010111100000001)))
(assert (= y (fp #b1 #b01110110101 #b1110001110111101111111001000001110011111100110100010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
