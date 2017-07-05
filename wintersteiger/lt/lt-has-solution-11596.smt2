(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.28054768506671479144642944447696208953857421875p156 {+ 1263474449926112 156 (1.1697e+047)}
; Y = 1.8259317552337808177043143587070517241954803466796875p-89 {+ 3719665945104315 -89 (2.94995e-027)}
; 1.28054768506671479144642944447696208953857421875p156 < 1.8259317552337808177043143587070517241954803466796875p-89 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010011011 #b0100011111010001111110010001110001010100011111100000)))
(assert (= y (fp #b0 #b01110100110 #b1101001101110000010000110111010101110100111110111011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
