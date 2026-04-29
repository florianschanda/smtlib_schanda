(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.661268224019401440472165631945244967937469482421875p662 {- 2978087327285726 662 (-3.17905e+199)}
; Y = 0.85981907976382832003992007230408489704132080078125p-1022 {+ 3872280887230420 -1023 (1.91316e-308)}
; -1.661268224019401440472165631945244967937469482421875p662 > 0.85981907976382832003992007230408489704132080078125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010010101 #b1010100101001000110111111101010000001100000111011110)))
(assert (= y (fp #b0 #b00000000000 #b1101110000011101000110100110110000001111111111010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
