(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0544371817390214562948358434368856251239776611328125p498 {+ 245163271394957 498 (8.62896e+149)}
; Y = 1.869420439584807969168878116761334240436553955078125p-804 {+ 3915521567742434 -804 (1.75223e-242)}
; 1.0544371817390214562948358434368856251239776611328125p498 % 1.869420439584807969168878116761334240436553955078125p-804 == 1.9937952805701772973634433583356440067291259765625p-805
; [HW: 1.9937952805701772973634433583356440067291259765625p-805] 

; mpf : + 4475656055258408 -805
; mpfd: + 4475656055258408 -805 (9.34403e-243) class: Pos. norm. non-zero
; hwf : + 4475656055258408 -805 (9.34403e-243) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110001 #b0000110111101111100110000101101101000001011010001101)))
(assert (= y (fp #b0 #b00011011011 #b1101111010010010010101101000001001111101100111100010)))
(assert (= r (fp #b1 #b00011011010 #xbebb4ef00369c)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
