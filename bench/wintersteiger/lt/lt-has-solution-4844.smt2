(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3036588763223837528215653946972452104091644287109375p717 {- 1367558002253231 717 (-8.98816e+215)}
; Y = 1.0630881289746987317101911685313098132610321044921875p-311 {+ 284123674141955 -311 (2.54824e-094)}
; -1.3036588763223837528215653946972452104091644287109375p717 < 1.0630881289746987317101911685313098132610321044921875p-311 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001100 #b0100110110111100100101101000111011110001110110101111)))
(assert (= y (fp #b0 #b01011001000 #b0001000000100110100010110010101010110110010100000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
