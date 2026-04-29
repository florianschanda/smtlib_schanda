(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5224244567082365620080963708460330963134765625p-98 {+ 2352790588560448 -98 (4.80392e-030)}
; Y = -1.638400522372988721286901636631228029727935791015625p-714 {- 2875100354672122 -714 (-1.90109e-215)}
; 1.5224244567082365620080963708460330963134765625p-98 < -1.638400522372988721286901636631228029727935791015625p-714 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011101 #b1000010110111101100110111111010000110001010001000000)))
(assert (= y (fp #b1 #b00100110101 #b1010001101101110001101110111010101010111010111111010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
