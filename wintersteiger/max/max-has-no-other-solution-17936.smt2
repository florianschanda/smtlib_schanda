(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.224072182799116337292844036710448563098907470703125p-842 {- 1009131398958194 -842 (-4.17398e-254)}
; Y = -1.799531562305566989579119763220660388469696044921875p383 {- 3600770046070302 383 (-3.54526e+115)}
; -1.224072182799116337292844036710448563098907470703125p-842 M -1.799531562305566989579119763220660388469696044921875p383 == -1.224072182799116337292844036710448563098907470703125p-842
; [HW: -1.224072182799116337292844036710448563098907470703125p-842] 

; mpf : - 1009131398958194 -842
; mpfd: - 1009131398958194 -842 (-4.17398e-254) class: Neg. norm. non-zero
; hwf : - 1009131398958194 -842 (-4.17398e-254) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010110101 #b0011100101011100110010110110100100010000110001110010)))
(assert (= y (fp #b1 #b10101111110 #b1100110010101110000110011011100000111000111000011110)))
(assert (= r (fp #b1 #b00010110101 #b0011100101011100110010110110100100010000110001110010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
