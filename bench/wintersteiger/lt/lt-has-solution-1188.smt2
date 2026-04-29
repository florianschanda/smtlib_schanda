(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0107710384497303746087482068105600774288177490234375p-17 {- 48508444748599 -17 (-7.71157e-006)}
; Y = -1.744838223914876973452692254795692861080169677734375p-986 {- 3354453147674342 -986 (-2.66796e-297)}
; -1.0107710384497303746087482068105600774288177490234375p-17 < -1.744838223914876973452692254795692861080169677734375p-986 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101110 #b0000001011000001111001000000100111100010101100110111)))
(assert (= y (fp #b1 #b00000100101 #b1011111010101101101101111100010010000110011011100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
