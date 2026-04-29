(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.356355823327889620344421928166411817073822021484375p-593 {+ 1604883953150790 -593 (4.18395e-179)}
; Y = -1.4284187574604689796586853844928555190563201904296875p-581 {- 1929426556457499 -581 (-1.8048e-175)}
; 1.356355823327889620344421928166411817073822021484375p-593 < -1.4284187574604689796586853844928555190563201904296875p-581 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101110 #b0101101100111010001000101001111011101110101101000110)))
(assert (= y (fp #b1 #b00110111010 #b0110110110101100110110100000100001001001001000011011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
