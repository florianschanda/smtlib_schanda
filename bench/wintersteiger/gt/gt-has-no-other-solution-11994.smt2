(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9238817205854019665167697894503362476825714111328125p-354 {+ 4160793372562829 -354 (5.24276e-107)}
; Y = -1.3947108881821979053938775905407965183258056640625p-283 {- 1777619808936424 -283 (-8.97419e-086)}
; 1.9238817205854019665167697894503362476825714111328125p-354 > -1.3947108881821979053938775905407965183258056640625p-283 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010011101 #b1110110010000011100000110010111101001001010110001101)))
(assert (= y (fp #b1 #b01011100100 #b0110010100001011110001011101010000011110000111101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
