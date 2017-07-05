(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7307161041033098936026135561405681073665618896484375p-893 {+ 3290852774153287 -893 (2.62084e-269)}
; Y = -1.397394204187301536279619540437124669551849365234375p-290 {- 1789704389897126 -290 (-7.02458e-088)}
; 1.7307161041033098936026135561405681073665618896484375p-893 = -1.397394204187301536279619540437124669551849365234375p-290 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000010 #b1011101100010000001101011110100111001000110001000111)))
(assert (= y (fp #b1 #b01011011101 #b0110010110111011101000000110011010011010101110100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
