(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7199101762747484034576928024762310087680816650390625p-441 {+ 3242187201611185 -441 (3.02885e-133)}
; Y = 1.8288166190415460210516584993456490337848663330078125p-719 {+ 3732658216673981 -719 (6.63137e-217)}
; 1.7199101762747484034576928024762310087680816650390625p-441 < 1.8288166190415460210516584993456490337848663330078125p-719 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000110 #b1011100001001100000010001000011100101000010110110001)))
(assert (= y (fp #b0 #b00100110000 #b1101010000101101010100110111000100101010001010111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
