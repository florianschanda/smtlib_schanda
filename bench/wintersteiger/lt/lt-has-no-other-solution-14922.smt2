(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3108011810804069963154461220256052911281585693359375p-891 {- 1399724083300031 -891 (-7.93982e-269)}
; Y = -1.8999235362714583796872602761141024529933929443359375p-28 {- 4052895302614079 -28 (-7.07777e-009)}
; -1.3108011810804069963154461220256052911281585693359375p-891 < -1.8999235362714583796872602761141024529933929443359375p-28 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000100 #b0100111110010000101010101000110001001100011010111111)))
(assert (= y (fp #b1 #b01111100011 #b1110011001100001011000111000110100101111110000111111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
