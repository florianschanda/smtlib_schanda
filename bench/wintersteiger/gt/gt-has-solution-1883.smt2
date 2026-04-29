(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5419734484055436229965607708436436951160430908203125p-511 {+ 2440831420283909 -511 (2.30011e-154)}
; Y = -1.2803303926716493865711754551739431917667388916015625p80 {- 1262495851976665 80 (-1.54782e+024)}
; 1.5419734484055436229965607708436436951160430908203125p-511 > -1.2803303926716493865711754551739431917667388916015625p80 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000000 #b1000101010111110110001011001110000110011110000000101)))
(assert (= y (fp #b1 #b10001001111 #b0100011111000011101110111000110010011001011111011001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
