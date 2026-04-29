(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.253141170012972427372233141795732080936431884765625p-887 {+ 1140046478942554 -887 (1.21449e-267)}
; Y = -1.1853237704492800563826904181041754782199859619140625p-89 {- 834624063538273 -89 (-1.91499e-027)}
; 1.253141170012972427372233141795732080936431884765625p-887 < -1.1853237704492800563826904181041754782199859619140625p-89 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010001000 #b0100000011001101110111000001011001111010000101011010)))
(assert (= y (fp #b1 #b01110100110 #b0010111101110001011000001110110101000000010001100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
