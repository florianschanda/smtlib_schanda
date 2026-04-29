(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7443973008875659491678788981516845524311065673828125p344 {- 3352467406892845 344 (-6.25121e+103)}
; Y = 0.42795152969519545393950465950183570384979248046875p-1022 {+ 1927322349667916 -1023 (9.52224e-309)}
; -1.7443973008875659491678788981516845524311065673828125p344 = 0.42795152969519545393950465950183570384979248046875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010111 #b1011111010010000110100100100111010001010111100101101)))
(assert (= y (fp #b0 #b00000000000 #b0110110110001110001110110100000001010000011001001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
