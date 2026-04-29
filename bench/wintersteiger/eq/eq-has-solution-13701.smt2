(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2981502684690762183805645690881647169589996337890625p-848 {- 1342749437977745 -848 (-6.91654e-256)}
; Y = -1.7794936629233333302835262657026760280132293701171875p-644 {- 3510527369879187 -644 (-2.43769e-194)}
; -1.2981502684690762183805645690881647169589996337890625p-848 = -1.7794936629233333302835262657026760280132293701171875p-644 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101111 #b0100110001010011100100110111010001011110010010010001)))
(assert (= y (fp #b1 #b00101111011 #b1100011110001100111001011000110110110001111010010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
