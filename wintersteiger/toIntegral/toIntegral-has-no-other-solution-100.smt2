(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5659050881336271654475922332494519650936126708984375 620 {- 2548609944045671 620 (-6.81338e+186)}
; -1.5659050881336271654475922332494519650936126708984375 620 I == -1.5659050881336271654475922332494519650936126708984375 620
; [HW: -1.5659050881336271654475922332494519650936126708984375 620] 

; mpf : - 2548609944045671 620
; mpfd: - 2548609944045671 620 (-6.81338e+186) class: Neg. norm. non-zero
; hwf : - 2548609944045671 620 (-6.81338e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101011 #b1001000011011111001001111110011000101100100001100111)))
(assert (= r (fp #b1 #b11001101011 #b1001000011011111001001111110011000101100100001100111)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
