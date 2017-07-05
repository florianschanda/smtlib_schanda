(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0670587136845492981507277363562025129795074462890625p-877 {+ 302005597961681 -877 (1.05897e-264)}
; Y = -1.80251075549707540091048940666951239109039306640625p0 {- 3614187139417444 0 (-1.80251)}
; 1.0670587136845492981507277363562025129795074462890625p-877 < -1.80251075549707540091048940666951239109039306640625p0 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010010010 #b0001000100101010110000101000011000101111110111010001)))
(assert (= y (fp #b1 #b01111111111 #b1100110101110001010110000100100110001100010101100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
