(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.968766880379361428055062788189388811588287353515625 306 {- 4362938161485370 306 (-2.56669e+092)}
; -1.968766880379361428055062788189388811588287353515625 306 I == -1.968766880379361428055062788189388811588287353515625 306
; [HW: -1.968766880379361428055062788189388811588287353515625 306] 

; mpf : - 4362938161485370 306
; mpfd: - 4362938161485370 306 (-2.56669e+092) class: Neg. norm. non-zero
; hwf : - 4362938161485370 306 (-2.56669e+092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110001 #b1111100000000001000110110011010010101101011000111010)))
(assert (= r (fp #b1 #b10100110001 #b1111100000000001000110110011010010101101011000111010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
