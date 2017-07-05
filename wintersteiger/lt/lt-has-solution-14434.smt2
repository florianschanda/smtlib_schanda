(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8812305820045731596934501794748939573764801025390625p-570 {- 3968709720743281 -570 (-4.86793e-172)}
; Y = 1.5924156125887376500571690485230647027492523193359375p-475 {+ 2668002732103103 -475 (1.63233e-143)}
; -1.8812305820045731596934501794748939573764801025390625p-570 < 1.5924156125887376500571690485230647027492523193359375p-475 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000101 #b1110000110011000010100111101000111110001110101110001)))
(assert (= y (fp #b0 #b01000100100 #b1001011110101000100011001011000110110101010110111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
