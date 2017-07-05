(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1855948166511616204132906204904429614543914794921875p-108 {+ 835844747112067 -108 (3.6534e-033)}
; Y = -1.1377098749698379975825446308590471744537353515625p-427 {- 620190141599400 -427 (-3.28264e-129)}
; 1.1855948166511616204132906204904429614543914794921875p-108 = -1.1377098749698379975825446308590471744537353515625p-427 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010011 #b0010111110000011001001000101001111010010111010000011)))
(assert (= y (fp #b1 #b01001010100 #b0010001101000000111101000101000101010100111010101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
