(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.518903073180322582658163810265250504016876220703125p-705 {- 2336931687016306 -705 (-9.02367e-213)}
; Y = -1.7946528281818154848537005818798206746578216552734375p-751 {- 3578798180888535 -751 (-1.51514e-226)}
; -1.518903073180322582658163810265250504016876220703125p-705 * -1.7946528281818154848537005818798206746578216552734375p-751 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111110 #b1000010011010110110101001111000100011010011101110010)))
(assert (= y (fp #b1 #b00100010000 #b1100101101101110010111100010010010110110111111010111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
