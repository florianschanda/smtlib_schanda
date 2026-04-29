(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9563179493378199946818085663835518062114715576171875p-1009 {- 4306873160285523 -1009 (-3.56594e-304)}
; Y = -1.4262581838360917085850587682216428220272064208984375p-520 {- 1919696197887847 -520 (-4.15528e-157)}
; -1.9563179493378199946818085663835518062114715576171875p-1009 < -1.4262581838360917085850587682216428220272064208984375p-520 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001110 #b1111010011010001010000001100110011111011110101010011)))
(assert (= y (fp #b1 #b00111110111 #b0110110100011111010000011001111100111010011101100111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
