(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.54490084036320940441555649158544838428497314453125p-930 {+ 2454015221613620 -930 (1.70218e-280)}
; Y = 1.161760801077717619733675746829248964786529541015625p-558 {+ 728505883456762 -558 (1.23134e-168)}
; 1.54490084036320940441555649158544838428497314453125p-930 * 1.161760801077717619733675746829248964786529541015625p-558 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011101 #b1000101101111110100111110001100011101100010000110100)))
(assert (= y (fp #b0 #b00111010001 #b0010100101101001001001111110011001100111010011111010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
