(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0136114608502140299606253392994403839111328125p-628 {+ 61300570012992 -628 (9.09985e-190)}
; Y = -1.78327932184314530417168498388491570949554443359375p396 {- 3527576461979804 396 (-2.87805e+119)}
; 1.0136114608502140299606253392994403839111328125p-628 = -1.78327932184314530417168498388491570949554443359375p396 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001011 #b0000001101111100000010100110101100110011110101000000)))
(assert (= y (fp #b1 #b10110001011 #b1100100010000100111111100101111011110011000010011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
