(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6409470291144818698825247338390909135341644287109375p140 {- 2886568801484207 140 (-2.28715e+042)}
; Y = -1.150349513969317616357557199080474674701690673828125p-487 {- 677114015087554 -487 (-2.87887e-147)}
; -1.6409470291144818698825247338390909135341644287109375p140 < -1.150349513969317616357557199080474674701690673828125p-487 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001011 #b1010010000010101000110101100000010000011110110101111)))
(assert (= y (fp #b1 #b01000011000 #b0010011001111101010011100100010101110111101111000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
