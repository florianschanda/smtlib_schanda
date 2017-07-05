(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3187262186592640933469056108151562511920928955078125p-202 {+ 1435415279587069 -202 (2.05161e-061)}
; Y = -1.403169667283686639080997338169254362583160400390625p-871 {- 1815714763345898 -871 (-8.91218e-263)}
; 1.3187262186592640933469056108151562511920928955078125p-202 = -1.403169667283686639080997338169254362583160400390625p-871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110101 #b0101000110011000000010101001110110000100111011111101)))
(assert (= y (fp #b1 #b00010011000 #b0110011100110110001000001001011110111000111111101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
