(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4797713447658324970035437218029983341693878173828125p643 {- 2160698049510445 643 (-5.4011e+193)}
; Y = -1.809090112023889584946800823672674596309661865234375p-269 {- 3643817927019942 -269 (-1.90718e-081)}
; -1.4797713447658324970035437218029983341693878173828125p643 > -1.809090112023889584946800823672674596309661865234375p-269 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010000010 #b0111101011010010010010110111101101010011110000101101)))
(assert (= y (fp #b1 #b01011110010 #b1100111100100000100001111001001010101000110110100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
