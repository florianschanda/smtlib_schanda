(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2426205870407545095446266714134253561496734619140625p391 {+ 1092665985389153 391 (6.2671e+117)}
; Y = 1.003075120771175221534576849080622196197509765625p-481 {+ 13849112759184 -481 (1.60659e-145)}
; 1.2426205870407545095446266714134253561496734619140625p391 > 1.003075120771175221534576849080622196197509765625p-481 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000110 #b0011111000011100011000011111111010101101001001100001)))
(assert (= y (fp #b0 #b01000011110 #b0000000011001001100001111111011100100100101110010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
