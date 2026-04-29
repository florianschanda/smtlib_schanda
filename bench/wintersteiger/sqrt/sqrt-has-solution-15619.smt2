(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9319739513926634799645398743450641632080078125p269 {+ 4197237540211008 269 (1.83261e+081)}
; 1.9319739513926634799645398743450641632080078125p269 S == 1.965692728476484685273817376582883298397064208984375p134
; [HW: 1.965692728476484685273817376582883298397064208984375p134] 

; mpf : + 4349093412121094 134
; mpfd: + 4349093412121094 134 (4.2809e+040) class: Pos. norm. non-zero
; hwf : + 4349093412121094 134 (4.2809e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001100 #b1110111010010101110110000100100111110100100101000000)))
(assert (= r (fp #b0 #b10010000101 #b1111011100110111101000110111111011001010101000000110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
