(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7446562976094373009772198201972059905529022216796875p-747 {+ 3353633824432955 -747 (2.35669e-225)}
; Y = -1.555803303388966440934382262639701366424560546875p953 {- 2503115550033840 953 (-1.18451e+287)}
; 1.7446562976094373009772198201972059905529022216796875p-747 < -1.555803303388966440934382262639701366424560546875p953 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010100 #b1011111010100001110010111000110011111110001100111011)))
(assert (= y (fp #b1 #b11110111000 #b1000111001001001001000000001001100010000011110110000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
