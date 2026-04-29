(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5060125969529554179615615794318728148937225341796875p-987 {+ 2278878143082107 -987 (1.15139e-297)}
; Y = 1.828015113930513191320414989604614675045013427734375p17 {+ 3729048558554598 17 (239602)}
; 1.5060125969529554179615615794318728148937225341796875p-987 < 1.828015113930513191320414989604614675045013427734375p17 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000100100 #b1000000110001010000010101010001101000110111001111011)))
(assert (= y (fp #b0 #b10000010000 #b1101001111111000110011000110101011101100110111100110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
