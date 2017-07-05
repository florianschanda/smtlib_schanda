(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3296736019744870294090333118219859898090362548828125p762 {+ 1484717911006189 762 (3.22553e+229)}
; Y = 1.141707569292068402688755668350495398044586181640625p1006 {+ 638194156259338 1006 (7.82944e+302)}
; 1.3296736019744870294090333118219859898090362548828125p762 % 1.141707569292068402688755668350495398044586181640625p1006 == 1.3296736019744870294090333118219859898090362548828125p762
; [HW: 1.3296736019744870294090333118219859898090362548828125p762] 

; mpf : + 1484717911006189 762
; mpfd: + 1484717911006189 762 (3.22553e+229) class: Pos. norm. non-zero
; hwf : + 1484717911006189 762 (3.22553e+229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111001 #b0101010001100101011111010011101011010101101111101101)))
(assert (= y (fp #b0 #b11111101101 #b0010010001000110111100100111111110110100100000001010)))
(assert (= r (fp #b0 #b11011111001 #x54657d3ad5bed)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
