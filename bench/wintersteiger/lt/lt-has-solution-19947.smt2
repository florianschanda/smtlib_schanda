(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9339964488069931736191620075260289013385772705078125p-176 {+ 4206346058812541 -176 (2.01919e-053)}
; Y = -1.1913162790664895140935186645947396755218505859375p640 {- 861611923113752 640 (-5.43531e+192)}
; 1.9339964488069931736191620075260289013385772705078125p-176 < -1.1913162790664895140935186645947396755218505859375p640 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101001111 #b1110111100011010011001000010101000110100110001111101)))
(assert (= y (fp #b1 #b11001111111 #b0011000011111010000110101000100111001000011100011000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
