(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.320732060873690993929585602018050849437713623046875p-655 {- 1444448789836526 -655 (-8.83421e-198)}
; Y = -1.610655160327390422736471009557135403156280517578125p15 {- 2750146352502306 15 (-52777.9)}
; -1.320732060873690993929585602018050849437713623046875p-655 > -1.610655160327390422736471009557135403156280517578125p15 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101110000 #b0101001000011011011111110001000000111011001011101110)))
(assert (= y (fp #b1 #b10000001110 #b1001110001010011111001011000011010111101011000100010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
