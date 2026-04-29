(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.506480717562044713275781759875826537609100341796875p-798 {- 2280986370882766 -798 (-9.03706e-241)}
; Y = -1.5719594216826526800190322319394908845424652099609375p123 {- 2575876238361039 123 (-1.67159e+037)}
; -1.506480717562044713275781759875826537609100341796875p-798 > -1.5719594216826526800190322319394908845424652099609375p123 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011100001 #b1000000110101000101110000110010111111011110011001110)))
(assert (= y (fp #b1 #b10001111010 #b1001001001101011111011101100001011000100000111001111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
