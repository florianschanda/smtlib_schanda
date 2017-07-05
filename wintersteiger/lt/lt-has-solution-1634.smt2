(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1459704949463549450427990450407378375530242919921875p1016 {- 657392666647491 1016 (-8.04728e+305)}
; Y = 1.078446100672733276581993777654133737087249755859375p-675 {+ 353289829758390 -675 (6.87941e-204)}
; -1.1459704949463549450427990450407378375530242919921875p1016 < 1.078446100672733276581993777654133737087249755859375p-675 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110111 #b0010010101011110010100101000010111111001101111000011)))
(assert (= y (fp #b0 #b00101011100 #b0001010000010101000010110010110011100011010110110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
