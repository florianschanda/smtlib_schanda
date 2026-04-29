(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2575738196085082254427334191859699785709381103515625p538 {+ 1160009358009273 538 (1.13154e+162)}
; Y = 1.0382933927970270371332617287407629191875457763671875p-763 {+ 172458109531443 -763 (2.1401e-230)}
; 1.2575738196085082254427334191859699785709381103515625p538 > 1.0382933927970270371332617287407629191875457763671875p-763 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011001 #b0100000111110000010110111001101110000110001110111001)))
(assert (= y (fp #b0 #b00100000100 #b0000100111001101100110001000010110110111010100110011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
