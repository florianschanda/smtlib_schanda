(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0336332766668376859087175034801475703716278076171875p-556 {- 151470812264019 -556 (-4.38217e-168)}
; Y = 1.9023042467128352672744995288667269051074981689453125p525 {+ 4063617069270741 525 (2.08943e+158)}
; -1.0336332766668376859087175034801475703716278076171875p-556 < 1.9023042467128352672744995288667269051074981689453125p525 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010011 #b0000100010011100001100001011111101010111011001010011)))
(assert (= y (fp #b0 #b11000001100 #b1110011011111101011010010011111010101100011011010101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
