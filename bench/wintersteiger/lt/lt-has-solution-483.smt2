(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7095133150622048301414679372101090848445892333984375p699 {- 3195363901328551 699 (-4.49614e+210)}
; Y = -1.115318440600451044275587264564819633960723876953125p-380 {- 519348086117138 -380 (-4.52898e-115)}
; -1.7095133150622048301414679372101090848445892333984375p699 < -1.115318440600451044275587264564819633960723876953125p-380 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010111010 #b1011010110100010101010100010010001000100110010100111)))
(assert (= y (fp #b1 #b01010000011 #b0001110110000101100000100110001100000001001100010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
