(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8749032870331772127059366539469920098781585693359375p454 {+ 3940214117467839 454 (8.72161e+136)}
; Y = 1.67974498800190108482865980477072298526763916015625p-375 {+ 3061299274672324 -375 (2.1827e-113)}
; 1.8749032870331772127059366539469920098781585693359375p454 = 1.67974498800190108482865980477072298526763916015625p-375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000101 #b1101111111111001101010010110110011111000011010111111)))
(assert (= y (fp #b0 #b01010001000 #b1010111000000011110001000111110100010110100011000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
