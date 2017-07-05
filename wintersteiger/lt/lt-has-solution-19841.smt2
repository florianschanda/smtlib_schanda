(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.330682802867863667728443033411167562007904052734375p271 {- 1489262947773542 271 (-5.04898e+081)}
; Y = 1.3911617333225516635053509162389673292636871337890625p333 {+ 1761635836433041 333 (2.43426e+100)}
; -1.330682802867863667728443033411167562007904052734375p271 < 1.3911617333225516635053509162389673292636871337890625p333 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100001110 #b0101010010100111101000001100111110101010110001100110)))
(assert (= y (fp #b0 #b10101001100 #b0110010000100011001011001110010000010001001010010001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
