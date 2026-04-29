(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.247289830063903703916139420471154153347015380859375p276 {- 1113694386528310 276 (-1.51442e+083)}
; Y = -1.25774748951617620917886597453616559505462646484375p599 {- 1160791497740732 599 (-2.60952e+180)}
; -1.247289830063903703916139420471154153347015380859375p276 > -1.25774748951617620917886597453616559505462646484375p599 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100010011 #b0011111101001110011000101110010011000010000000110110)))
(assert (= y (fp #b1 #b11001010110 #b0100000111111011101111010100111000011001000110111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
