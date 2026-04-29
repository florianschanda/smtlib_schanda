(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9759740745795599803358300050604157149791717529296875p-275 {- 4395396478599771 -275 (-3.25486e-083)}
; Y = 1.0837107413233233454974424603278748691082000732421875p-721 {+ 376999663430627 -721 (9.82396e-218)}
; -1.9759740745795599803358300050604157149791717529296875p-275 > 1.0837107413233233454974424603278748691082000732421875p-721 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011101100 #b1111100111011001011011111101110000010000001001011011)))
(assert (= y (fp #b0 #b00100101110 #b0001010101101110000100010011000001001110101111100011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
