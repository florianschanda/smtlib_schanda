(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.203952104691384139556475929566659033298492431640625p84 {+ 918518622689546 84 (2.32878e+025)}
; Y = -1.6627396624012658055136171242338605225086212158203125p843 {- 2984714096633989 843 (-9.75238e+253)}
; 1.203952104691384139556475929566659033298492431640625p84 < -1.6627396624012658055136171242338605225086212158203125p843 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010011 #b0011010000110110001101001000001110011001100100001010)))
(assert (= y (fp #b1 #b11101001010 #b1010100110101001010011100111011111000110100010000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
