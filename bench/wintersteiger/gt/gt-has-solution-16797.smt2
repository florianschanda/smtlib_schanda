(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.122604811630115495546533566084690392017364501953125p-34 {- 552162983971218 -34 (-6.53442e-011)}
; Y = 1.0242755533231526765547414470347575843334197998046875p45 {+ 109327372900363 45 (3.60385e+013)}
; -1.122604811630115495546533566084690392017364501953125p-34 > 1.0242755533231526765547414470347575843334197998046875p45 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011101 #b0001111101100011000001110110100001001000100110010010)))
(assert (= y (fp #b0 #b10000101100 #b0000011000110110111011000011001110011101100000001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
