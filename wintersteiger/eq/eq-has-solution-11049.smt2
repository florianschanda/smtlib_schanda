(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.996753358879220119348474327125586569309234619140625p525 {- 4488978055628746 525 (-2.19317e+158)}
; Y = -1.2405228462905542041738726766197942197322845458984375p-772 {- 1083218600928231 -772 (-4.994e-233)}
; -1.996753358879220119348474327125586569309234619140625p525 = -1.2405228462905542041738726766197942197322845458984375p-772 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001100 #b1111111100101011001110100110011010010000011111001010)))
(assert (= y (fp #b1 #b00011111011 #b0011110110010010111001111011111011000010001111100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
