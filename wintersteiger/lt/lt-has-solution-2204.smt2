(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1854351537385057202556026823003776371479034423828125p-309 {- 835125689278125 -309 (-1.1366e-093)}
; Y = -1.442430805979961316865001208498142659664154052734375p533 {- 1992531212948582 533 (-4.05586e+160)}
; -1.1854351537385057202556026823003776371479034423828125p-309 < -1.442430805979961316865001208498142659664154052734375p533 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001010 #b0010111101111000101011011010000011010101111010101101)))
(assert (= y (fp #b1 #b11000010100 #b0111000101000011001001010011001001101101010001100110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
