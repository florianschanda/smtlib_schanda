(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.91752021696089247626559881609864532947540283203125p530 {- 4132143707209972 530 (-6.73965e+159)}
; Y = 1.398615792172652305680458084680140018463134765625p863 {+ 1795205933092752 863 (8.60171e+259)}
; -1.91752021696089247626559881609864532947540283203125p530 < 1.398615792172652305680458084680140018463134765625p863 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010001 #b1110101011100010100110101101110101000100000011110100)))
(assert (= y (fp #b0 #b11101011110 #b0110011000001011101011110011111100001100111110010000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
