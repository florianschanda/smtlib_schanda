(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0009480030356610047448384648305363953113555908203125p377 {- 4269426118149 377 (-3.0812e+113)}
; Y = -1.3877029329292589476807506798650138080120086669921875p583 {- 1746058784270659 583 (-4.39323e+175)}
; -1.0009480030356610047448384648305363953113555908203125p377 < -1.3877029329292589476807506798650138080120086669921875p583 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111000 #b0000000000111110001000001101101000001000111000000101)))
(assert (= y (fp #b1 #b11001000110 #b0110001101000000011111111101100101111110100101000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
