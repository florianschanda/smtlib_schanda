(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3900978884026364834625155708636157214641571044921875p-83 {- 1756844704848131 -83 (-1.43733e-025)}
; Y = -1.478838350040036164756429570843465626239776611328125p862 {- 2156496214811010 862 (-4.54754e+259)}
; -1.3900978884026364834625155708636157214641571044921875p-83 m -1.478838350040036164756429570843465626239776611328125p862 == -1.478838350040036164756429570843465626239776611328125p862
; [HW: -1.478838350040036164756429570843465626239776611328125p862] 

; mpf : - 2156496214811010 862
; mpfd: - 2156496214811010 862 (-4.54754e+259) class: Neg. norm. non-zero
; hwf : - 2156496214811010 862 (-4.54754e+259) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110101100 #b0110001111011101011101001000100011101101100100000011)))
(assert (= y (fp #b1 #b11101011101 #b0111101010010101001001100110110101111110000110000010)))
(assert (= r (fp #b1 #b11101011101 #b0111101010010101001001100110110101111110000110000010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
