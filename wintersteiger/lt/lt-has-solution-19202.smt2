(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.867128666257739322276165694347582757472991943359375p-377 {+ 3905200338240630 -377 (6.06549e-114)}
; Y = 1.6020065142618020725961969219497404992580413818359375p408 {+ 2711196313304063 408 (1.05902e+123)}
; 1.867128666257739322276165694347582757472991943359375p-377 < 1.6020065142618020725961969219497404992580413818359375p408 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000110 #b1101110111111100001001001110111100000000010001110110)))
(assert (= y (fp #b0 #b10110010111 #b1001101000011101000110010101001010111011101111111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
