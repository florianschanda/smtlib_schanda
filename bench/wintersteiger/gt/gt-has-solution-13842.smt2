(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4039313519483640479990071980864740908145904541015625p-687 {- 1819145086117913 -687 (-2.18645e-207)}
; Y = 1.7798942474766834553889793824055232107639312744140625p703 {+ 3512331442324385 703 (7.48999e+211)}
; -1.4039313519483640479990071980864740908145904541015625p-687 > 1.7798942474766834553889793824055232107639312744140625p703 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010000 #b0110011101101000000010111000101001110010100000011001)))
(assert (= y (fp #b0 #b11010111110 #b1100011110100111001001100011111101000000001110100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
