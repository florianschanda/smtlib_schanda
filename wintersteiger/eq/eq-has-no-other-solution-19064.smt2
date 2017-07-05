(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.2549311853726929921748478591325692832469940185546875p-57 {- 1148107991449579 -57 (-8.70783e-018)}
; -zero = -1.2549311853726929921748478591325692832469940185546875p-57 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01111000110 #b0100000101000011001010111000111111100111111111101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
