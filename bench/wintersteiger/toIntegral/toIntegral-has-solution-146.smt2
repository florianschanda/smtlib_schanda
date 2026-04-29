(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.005874780283415592663232018821872770786285400390625 731 {+ 26457658295274 731 (1.13624e+220)}
; 1.005874780283415592663232018821872770786285400390625 731 I == 1.005874780283415592663232018821872770786285400390625 731
; [HW: 1.005874780283415592663232018821872770786285400390625 731] 

; mpf : + 26457658295274 731
; mpfd: + 26457658295274 731 (1.13624e+220) class: Pos. norm. non-zero
; hwf : + 26457658295274 731 (1.13624e+220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011010 #b0000000110000001000000100111010100110000001111101010)))
(assert (= r (fp #b0 #b11011011010 #b0000000110000001000000100111010100110000001111101010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
