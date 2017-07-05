(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.4656872544835899407900114965741522610187530517578125p-217 {+ 2097268945763485 -217 (6.95877e-066)}
; +zero % 1.4656872544835899407900114965741522610187530517578125p-217 == +zero
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
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01100100110 #b0111011100110111010001111010100000101011110010011101)))
(assert (= r (_ +zero 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
