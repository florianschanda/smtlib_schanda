(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5558086644113224839003351007704623043537139892578125 204 {+ 2503139693932125 204 (4.00014e+061)}
; 1.5558086644113224839003351007704623043537139892578125 204 I == 1.5558086644113224839003351007704623043537139892578125 204
; [HW: 1.5558086644113224839003351007704623043537139892578125 204] 

; mpf : + 2503139693932125 204
; mpfd: + 2503139693932125 204 (4.00014e+061) class: Pos. norm. non-zero
; hwf : + 2503139693932125 204 (4.00014e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001011 #b1000111001001001011110100000010001111010111001011101)))
(assert (= r (fp #b0 #b10011001011 #b1000111001001001011110100000010001111010111001011101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
