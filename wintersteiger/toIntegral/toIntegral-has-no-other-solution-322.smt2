(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4291108314208942342560249016969464719295501708984375 154 {+ 1932543380487783 154 (3.26351e+046)}
; 1.4291108314208942342560249016969464719295501708984375 154 I == 1.4291108314208942342560249016969464719295501708984375 154
; [HW: 1.4291108314208942342560249016969464719295501708984375 154] 

; mpf : + 1932543380487783 154
; mpfd: + 1932543380487783 154 (3.26351e+046) class: Pos. norm. non-zero
; hwf : + 1932543380487783 154 (3.26351e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011001 #b0110110111011010001101010001101101001111111001100111)))
(assert (= r (fp #b0 #b10010011001 #b0110110111011010001101010001101101001111111001100111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
