(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5208325918386809139093429621425457298755645751953125p343 {- 2345621466527093 343 (-2.72502e+103)}
; Y = -1.7872409152759782813291167258284986019134521484375p92 {- 3545417892687704 92 (-8.84999e+027)}
; -1.5208325918386809139093429621425457298755645751953125p343 < -1.7872409152759782813291167258284986019134521484375p92 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010110 #b1000010101010101010010001110010010100011010101110101)))
(assert (= y (fp #b1 #b10001011011 #b1100100110001000100111101110000100101110111101011000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
