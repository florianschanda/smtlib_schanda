(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8820564535932451377675533876754343509674072265625p-327 {+ 3972429115722280 -327 (6.88373e-099)}
; Y = 1.9916312549531089981513787279254756867885589599609375p79 {+ 4465910150295759 79 (1.20387e+024)}
; 1.8820564535932451377675533876754343509674072265625p-327 < 1.9916312549531089981513787279254756867885589599609375p79 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111000 #b1110000111001110011100111010010101101000101000101000)))
(assert (= y (fp #b0 #b10001001110 #b1111110111011011100010111100000110110111000011001111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
