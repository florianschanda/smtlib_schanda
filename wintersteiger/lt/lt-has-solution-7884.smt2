(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6538283789620951136356552524375729262828826904296875p945 {- 2944581243857947 945 (-4.91854e+284)}
; Y = 1.93186943267195143647541044629178941249847412109375p-853 {+ 4196766829739356 -853 (3.21656e-257)}
; -1.6538283789620951136356552524375729262828826904296875p945 < 1.93186943267195143647541044629178941249847412109375p-853 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110000 #b1010011101100001010010111111000011010110110000011011)))
(assert (= y (fp #b0 #b00010101010 #b1110111010001110111111101100000101110111110101011100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
