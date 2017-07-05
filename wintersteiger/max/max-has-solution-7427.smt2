(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 0.173726026107610120874369386001490056514739990234375p-1022 {+ 782392466442790 -1023 (3.86553e-309)}
; Y = 1.1118331273900812217192424213862977921962738037109375p-882 {+ 503651630841647 -882 (3.44813e-266)}
; 0.173726026107610120874369386001490056514739990234375p-1022 M 1.1118331273900812217192424213862977921962738037109375p-882 == 1.1118331273900812217192424213862977921962738037109375p-882
; [HW: 1.1118331273900812217192424213862977921962738037109375p-882] 

; mpf : + 503651630841647 -882
; mpfd: + 503651630841647 -882 (3.44813e-266) class: Pos. norm. non-zero
; hwf : + 503651630841647 -882 (3.44813e-266) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0010110001111001010011110001000010011000101000100110)))
(assert (= y (fp #b0 #b00010001101 #b0001110010100001000110001000100010111111111100101111)))
(assert (= r (fp #b0 #b00010001101 #b0001110010100001000110001000100010111111111100101111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
