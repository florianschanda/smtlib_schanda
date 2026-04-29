(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.574658800923835588747579095070250332355499267578125p-53 {- 2588033161705762 -53 (-1.74822e-016)}
; Y = -1.2532032997071012037082482493133284151554107666015625p584 {- 1140326286209881 584 (-7.93486e+175)}
; -1.574658800923835588747579095070250332355499267578125p-53 < -1.2532032997071012037082482493133284151554107666015625p584 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001010 #b1001001100011100110101101101010001010011100100100010)))
(assert (= y (fp #b1 #b11001000111 #b0100000011010001111011100111001101111011001101011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
