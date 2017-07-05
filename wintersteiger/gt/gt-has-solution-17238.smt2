(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.974473122640504119118531889398582279682159423828125p-43 {- 4388636792006338 -43 (-2.24472e-013)}
; Y = -1.7661075614162851099564477408421225845813751220703125p-568 {- 3450241728120101 -568 (-1.82801e-171)}
; -1.974473122640504119118531889398582279682159423828125p-43 > -1.7661075614162851099564477408421225845813751220703125p-568 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010100 #b1111100101110111000100100001000010010010011011000010)))
(assert (= y (fp #b1 #b00111000111 #b1100010000011111101000000000100110000000010100100101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
