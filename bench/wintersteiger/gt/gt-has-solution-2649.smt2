(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7270901290352487222889976692385971546173095703125p-840 {- 3274522834187912 -840 (-2.35569e-253)}
; Y = -1.5066631523888636134955731904483400285243988037109375p-306 {- 2281807984300847 -306 (-1.15568e-092)}
; -1.7270901290352487222889976692385971546173095703125p-840 > -1.5066631523888636134955731904483400285243988037109375p-306 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110111 #b1011101000100010100101000010010101110011011010001000)))
(assert (= y (fp #b1 #b01011001101 #b1000000110110100101011010010010110011001001100101111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
