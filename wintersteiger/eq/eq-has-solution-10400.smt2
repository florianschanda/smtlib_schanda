(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2815074673811033267867287577246315777301788330078125p986 {- 1267796925199549 986 (-8.38102e+296)}
; Y = -1.0186709006966887525180709417327307164669036865234375p567 {- 84086261420279 567 (-4.92086e+170)}
; -1.2815074673811033267867287577246315777301788330078125p986 = -1.0186709006966887525180709417327307164669036865234375p567 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011001 #b0100100000010000110111111001010111111011010010111101)))
(assert (= y (fp #b1 #b11000110110 #b0000010011000111100111011011101111100001000011110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
