(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6191221812282894365608854059246368706226348876953125p408 {+ 2788278424676533 408 (1.07033e+123)}
; Y = -1.330173119004936399534244628739543259143829345703125p-371 {- 1486967535718386 -371 (-2.76554e-112)}
; 1.6191221812282894365608854059246368706226348876953125p408 = -1.330173119004936399534244628739543259143829345703125p-371 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110010111 #b1001111001111110110010101001000010011010100010110101)))
(assert (= y (fp #b1 #b01010001100 #b0101010010000110001110011011110000100100111111110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
