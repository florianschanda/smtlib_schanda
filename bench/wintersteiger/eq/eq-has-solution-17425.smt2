(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7553329493692473306509782560169696807861328125p-883 {+ 3401717189320000 -883 (2.72191e-266)}
; Y = 1.9020607918215406417772328495630063116550445556640625p847 {+ 4062520645913025 847 (1.78497e+255)}
; 1.7553329493692473306509782560169696807861328125p-883 = 1.9020607918215406417772328495630063116550445556640625p847 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010001100 #b1100000101011101100000000000101100100001110101000000)))
(assert (= y (fp #b0 #b11101001110 #b1110011011101101011101001011111111100000100111000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
