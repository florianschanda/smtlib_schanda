(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.523802554005848630680475253029726445674896240234375p431 {- 2358996987036454 431 (-8.45e+129)}
; Y = 1.026500508274023726329460259876213967800140380859375p1000 {+ 119347679188022 1000 (1.0999e+301)}
; -1.523802554005848630680475253029726445674896240234375p431 < 1.026500508274023726329460259876213967800140380859375p1000 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110101110 #b1000011000010111111011001001011100000100001100100110)))
(assert (= y (fp #b0 #b11111100111 #b0000011011001000101111001100000001011101010000110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
