(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6512138600448322822700220058322884142398834228515625p868 {+ 2932806497436409 868 (3.24967e+261)}
; Y = -1.2489381671082375735437608454958535730838775634765625p-568 {- 1121117836626953 -568 (-1.29272e-171)}
; 1.6512138600448322822700220058322884142398834228515625p868 < -1.2489381671082375735437608454958535730838775634765625p-568 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100011 #b1010011010110101111100111001011110011000001011111001)))
(assert (= y (fp #b1 #b00111000111 #b0011111110111010011010010110011001110100110000001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
