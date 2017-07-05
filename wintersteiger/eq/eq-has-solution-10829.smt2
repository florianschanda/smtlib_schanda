(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.098631779594501534091932626324705779552459716796875p238 {+ 444198045828686 238 (4.85279e+071)}
; Y = -1.479502318838957553026602909085340797901153564453125p-408 {- 2159486464446418 -408 (-2.23809e-123)}
; 1.098631779594501534091932626324705779552459716796875p238 = -1.479502318838957553026602909085340797901153564453125p-408 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101101 #b0001100100111111111011101010101110110100011001001110)))
(assert (= y (fp #b1 #b01001100111 #b0111101011000000101010011111100111000100111111010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
