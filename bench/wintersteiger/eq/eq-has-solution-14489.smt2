(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.562685032070132873371903770021162927150726318359375p459 {+ 2534108100758006 459 (2.32616e+138)}
; Y = 1.048210297877230967600326039246283471584320068359375p67 {+ 217119879555318 67 (1.54689e+020)}
; 1.562685032070132873371903770021162927150726318359375p459 = 1.048210297877230967600326039246283471584320068359375p67 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001010 #b1001000000001100001000000101001010110000100111110110)))
(assert (= y (fp #b0 #b10001000010 #b0000110001010111100000101001010010110110100011110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
