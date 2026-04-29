(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.157494740131244981284908135421574115753173828125p-655 {- 709293252967888 -655 (-7.74233e-198)}
; Y = 1.2766645817037949317551692729466594755649566650390625p-530 {+ 1245986507067825 -530 (3.63228e-160)}
; -1.157494740131244981284908135421574115753173828125p-655 * 1.2766645817037949317551692729466594755649566650390625p-530 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110000 #b0010100001010001100100110100011000100111110111010000)))
(assert (= y (fp #b0 #b00111101101 #b0100011011010011011111010111001001100001000110110001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
