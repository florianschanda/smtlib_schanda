(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3459147475655799386373701054253615438938140869140625p486 {+ 1557861528238305 486 (2.68903e+146)}
; Y = 1.7499567416268260178213722610962577164173126220703125p-294 {+ 3377504902134565 -294 (5.49805e-089)}
; 1.3459147475655799386373701054253615438938140869140625p486 = 1.7499567416268260178213722610962577164173126220703125p-294 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100101 #b0101100010001101110111100110111111111111100011100001)))
(assert (= y (fp #b0 #b01011011001 #b1011111111111101001010100011111010110011101100100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
