(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9718955054138025406729184396681375801563262939453125p-279 {+ 4377028236024661 -279 (2.03009e-084)}
; Y = -1.4702679861625187474061249304213561117649078369140625p974 {- 2117898727245793 974 (-2.34754e+293)}
; 1.9718955054138025406729184396681375801563262939453125p-279 < -1.4702679861625187474061249304213561117649078369140625p974 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011101000 #b1111100011001110001001001101001011100001101101010101)))
(assert (= y (fp #b1 #b11111001101 #b0111100001100011011110111001010011101100011111100001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
