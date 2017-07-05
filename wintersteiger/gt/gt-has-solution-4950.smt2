(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4212102317238102244800757034681737422943115234375p-672 {- 1896962242635992 -672 (-7.25273e-203)}
; Y = 1.8122887934819129629460121577722020447254180908203125p-762 {+ 3658223507642373 -762 (7.47086e-230)}
; -1.4212102317238102244800757034681737422943115234375p-672 > 1.8122887934819129629460121577722020447254180908203125p-762 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011111 #b0110101111010100011011110000100111111110100011011000)))
(assert (= y (fp #b0 #b00100000101 #b1100111111110010001010001000101011101001100000000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
