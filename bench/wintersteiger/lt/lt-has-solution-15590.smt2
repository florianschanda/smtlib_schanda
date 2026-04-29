(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3144630154861705051416720380075275897979736328125p950 {- 1416215519365320 950 (-1.25096e+286)}
; Y = -1.4119911039244172901163665301282890141010284423828125p610 {- 1855442982113965 610 (-5.9997e+183)}
; -1.3144630154861705051416720380075275897979736328125p950 < -1.4119911039244172901163665301282890141010284423828125p610 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110101 #b0101000010000000101001011110111101010000100011001000)))
(assert (= y (fp #b1 #b11001100001 #b0110100101111000001111111011110110011001001010101101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
