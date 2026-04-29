(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2397183255586317063290380247053690254688262939453125p81 {- 1079595361659733 81 (-2.99745e+024)}
; Y = 1.50911457201150245310827813227660953998565673828125p933 {+ 2292848196799892 933 (1.09574e+281)}
; -1.2397183255586317063290380247053690254688262939453125p81 > 1.50911457201150245310827813227660953998565673828125p933 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010000 #b0011110101011110001011100010000010000110101101010101)))
(assert (= y (fp #b0 #b11110100100 #b1000001001010101010101010010010010110100110110010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
