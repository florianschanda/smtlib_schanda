(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2237335036486800543542585728573612868785858154296875p-259 {- 1007606123662491 -259 (-1.32105e-078)}
; Y = -1.7754052363688896942761630270979367196559906005859375p-344 {- 3492114733572063 -344 (-4.95426e-104)}
; -1.2237335036486800543542585728573612868785858154296875p-259 > -1.7754052363688896942761630270979367196559906005859375p-344 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111100 #b0011100101000110100110010101000100110000110010011011)))
(assert (= y (fp #b1 #b01010100111 #b1100011010000000111101010010001101011001111111011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
