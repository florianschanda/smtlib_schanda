(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9522322630169812729405975915142334997653961181640625p-125 {- 4288472864893441 -125 (-4.58968e-038)}
; Y = 1.6309174819555714019969627770478837192058563232421875p-824 {+ 2841399736636643 -824 (1.45786e-248)}
; -1.9522322630169812729405975915142334997653961181640625p-125 < 1.6309174819555714019969627770478837192058563232421875p-824 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000010 #b1111001111000101011111100101101111011010101000000001)))
(assert (= y (fp #b0 #b00011000111 #b1010000110000011110011101101111101111001010011100011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
