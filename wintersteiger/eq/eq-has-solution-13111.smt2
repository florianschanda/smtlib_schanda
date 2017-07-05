(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.736128000016138539507437599240802228450775146484375p-268 {+ 3315225786569670 -268 (3.66052e-081)}
; Y = 1.509277385648210678681380159105174243450164794921875p757 {+ 2293581444233502 757 (1.14413e+228)}
; 1.736128000016138539507437599240802228450775146484375p-268 = 1.509277385648210678681380159105174243450164794921875p757 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110011 #b1011110001110010111000100111010110111101001111000110)))
(assert (= y (fp #b0 #b11011110100 #b1000001001100000000000001011001111110011100100011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
