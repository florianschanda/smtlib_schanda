(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.939228594607197653232333323103375732898712158203125p-187 {+ 4229909548688690 -187 (9.88598e-057)}
; Y = -1.8923406740352728405696325353346765041351318359375p-118 {- 4018745127072792 -118 (-5.69456e-036)}
; 1.939228594607197653232333323103375732898712158203125p-187 = -1.8923406740352728405696325353346765041351318359375p-118 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000100 #b1111000001110001010010010000000101001110010100110010)))
(assert (= y (fp #b1 #b01110001001 #b1110010001110000011100000011101111011111010000011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
