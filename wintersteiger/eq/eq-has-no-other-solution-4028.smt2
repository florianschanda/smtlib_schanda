(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5821957725975106523463864505174569785594940185546875p279 {+ 2621976664526827 279 (1.53684e+084)}
; Y = -1.1479733103025739904268220925587229430675506591796875p1016 {- 666412545139451 1016 (-8.06134e+305)}
; 1.5821957725975106523463864505174569785594940185546875p279 = -1.1479733103025739904268220925587229430675506591796875p1016 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010110 #b1001010100001010110010000011101100101100111111101011)))
(assert (= y (fp #b1 #b11111110111 #b0010010111100001100101000011000001101110001011111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
