(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3701777498555685053105435144971124827861785888671875p815 {- 1667132376310387 815 (-2.9938e+245)}
; Y = 1.0329312043717362445960361583274789154529571533203125p-980 {+ 148308959737413 -980 (1.01082e-295)}
; -1.3701777498555685053105435144971124827861785888671875p815 > 1.0329312043717362445960361583274789154529571533203125p-980 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101110 #b0101111011000011111110000001000101010110001001110011)))
(assert (= y (fp #b0 #b00000101011 #b0000100001101110001011011110110111001011011001000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
