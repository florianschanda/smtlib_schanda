(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7544494572600093373893059833790175616741180419921875p-722 {- 3397738294586051 -722 (-7.95214e-218)}
; Y = 1.87811750452426284851981108658947050571441650390625p936 {+ 3954689666162980 936 (1.09093e+282)}
; -1.7544494572600093373893059833790175616741180419921875p-722 > 1.87811750452426284851981108658947050571441650390625p936 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101101 #b1100000100100011100110011000000101101010101011000011)))
(assert (= y (fp #b0 #b11110100111 #b1110000011001100010011110000101111111010000100100100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
