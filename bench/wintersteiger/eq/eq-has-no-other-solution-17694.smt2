(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.974813764339054866780998054309748113155364990234375p184 {- 4390170905832998 184 (-4.84223e+055)}
; Y = -1.7318721646179222606320990962558425962924957275390625p15 {- 3296059207856113 15 (-56750)}
; -1.974813764339054866780998054309748113155364990234375p184 = -1.7318721646179222606320990962558425962924957275390625p15 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110111 #b1111100110001101011001010001010110000110111000100110)))
(assert (= y (fp #b1 #b10000001110 #b1011101101011011111110010110001111100010111111110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
