(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1193784623771847464013262651860713958740234375p634 {- 537632798677952 634 (-7.97984e+190)}
; Y = -1.971676634855851428795858737430535256862640380859375p-792 {- 4376042530661430 -792 (-7.56971e-239)}
; -1.1193784623771847464013262651860713958740234375p634 > -1.971676634855851428795858737430535256862640380859375p-792 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111001 #b0001111010001111100101100011111111000001101111000000)))
(assert (= y (fp #b1 #b00011100111 #b1111100010111111110011001100100011111110010000110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
