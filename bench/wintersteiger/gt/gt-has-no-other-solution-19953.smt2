(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.741708386638915584399001090787351131439208984375p-306 {- 3340357613684592 -306 (-1.33597e-092)}
; Y = -1.903282198852007667255747946910560131072998046875p-571 {- 4068021374160304 -571 (-2.4625e-172)}
; -1.741708386638915584399001090787351131439208984375p-306 > -1.903282198852007667255747946910560131072998046875p-571 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001101 #b1011110111100000100110011100111111001000011101110000)))
(assert (= y (fp #b1 #b00111000100 #b1110011100111101100000001000111100100000110110110000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
