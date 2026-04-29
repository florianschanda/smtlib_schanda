(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4003635761788755242918114163330756127834320068359375p1007 {+ 1803077252491903 1007 (1.92064e+303)}
; Y = -1.4005681473229072420139118548831902444362640380859375p-988 {- 1803998559019935 -988 (-5.35388e-298)}
; 1.4003635761788755242918114163330756127834320068359375p1007 > -1.4005681473229072420139118548831902444362640380859375p-988 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101110 #b0110011001111110001110100011001000110010101001111111)))
(assert (= y (fp #b1 #b00000100011 #b0110011010001011101000100101010010010010001110011111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
