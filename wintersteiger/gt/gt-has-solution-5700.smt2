(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8164930584478515829260913960752077400684356689453125p-854 {- 3677157833776341 -854 (-1.51223e-257)}
; Y = 1.994012309815793582146170592750422656536102294921875p-292 {+ 4476633468088094 -292 (2.50593e-088)}
; -1.8164930584478515829260913960752077400684356689453125p-854 > 1.994012309815793582146170592750422656536102294921875p-292 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101001 #b1101000100000101101100000110011101110001110011010101)))
(assert (= y (fp #b0 #b01011011011 #b1111111001110111100101110011101001111010111100011110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
