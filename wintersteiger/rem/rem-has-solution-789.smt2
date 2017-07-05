(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.14457899967839171750938476179726421833038330078125p-562 {+ 651125929077204 -562 (7.58208e-170)}
; Y = -1.39416753220064482121642868150956928730010986328125p-240 {- 1775172751140372 -240 (-7.89071e-073)}
; 1.14457899967839171750938476179726421833038330078125p-562 % -1.39416753220064482121642868150956928730010986328125p-240 == 1.14457899967839171750938476179726421833038330078125p-562
; [HW: 1.14457899967839171750938476179726421833038330078125p-562] 

; mpf : + 651125929077204 -562
; mpfd: + 651125929077204 -562 (7.58208e-170) class: Pos. norm. non-zero
; hwf : + 651125929077204 -562 (7.58208e-170) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001101 #b0010010100000011001000010001101101001110100111010100)))
(assert (= y (fp #b1 #b01100001111 #b0110010011101000001010011101001111110010011000010100)))
(assert (= r (fp #b0 #b00111001101 #x2503211b4e9d4)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
