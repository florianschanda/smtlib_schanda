(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.04287995570331393224705607281066477298736572265625p-680 {+ 193114152527108 -680 (2.07892e-205)}
; Y = 1.8038321163298347560299816905171610414981842041015625p147 {+ 3620138019571481 147 (3.21814e+044)}
; 1.04287995570331393224705607281066477298736572265625p-680 < 1.8038321163298347560299816905171610414981842041015625p147 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010111 #b0000101011111010001011100100011101100110010100000100)))
(assert (= y (fp #b0 #b10010010010 #b1100110111000111111100010000101100011100011100011001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
