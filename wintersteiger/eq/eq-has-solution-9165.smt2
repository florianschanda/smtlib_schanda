(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.836634518868348830977765828720293939113616943359375p999 {+ 3767866907420790 999 (9.83985e+300)}
; Y = -1.5045253801708753371713100932538509368896484375p-40 {- 2272180314136512 -40 (-1.36836e-012)}
; 1.836634518868348830977765828720293939113616943359375p999 = -1.5045253801708753371713100932538509368896484375p-40 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111100110 #b1101011000101101101011100000100100111110100001110110)))
(assert (= y (fp #b1 #b01111010111 #b1000000100101000100100110100011111010101111111000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
