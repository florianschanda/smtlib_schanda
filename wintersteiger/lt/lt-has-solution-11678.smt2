(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0976785633218231197361092199571430683135986328125p-279 {- 439905141378248 -279 (-1.13007e-084)}
; Y = -1.40358906068316269255547013017348945140838623046875p-236 {- 1817603543303500 -236 (-1.27105e-071)}
; -1.0976785633218231197361092199571430683135986328125p-279 < -1.40358906068316269255547013017348945140838623046875p-236 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011101000 #b0001100100000001011101100101101011111100110011001000)))
(assert (= y (fp #b1 #b01100010011 #b0110011101010001100111001101100010101000010101001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
