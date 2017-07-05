(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2977367277288978097971039460389874875545501708984375p396 {- 1340887016054375 396 (-2.09443e+119)}
; Y = 1.9133871899999161936278824214241467416286468505859375p-168 {+ 4113530208528607 -168 (5.11403e-051)}
; -1.2977367277288978097971039460389874875545501708984375p396 < 1.9133871899999161936278824214241467416286468505859375p-168 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001011 #b0100110000111000011110010110010001101001111001100111)))
(assert (= y (fp #b0 #b01101010111 #b1110100111010011101111100010110110100010100011011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
