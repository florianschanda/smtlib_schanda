(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9451055119048989983099318124004639685153961181640625p-566 {- 4256376831240705 -566 (-8.05315e-171)}
; -1.9451055119048989983099318124004639685153961181640625p-566 | == 1.9451055119048989983099318124004639685153961181640625p-566
; [HW: 1.9451055119048989983099318124004639685153961181640625p-566] 

; mpf : + 4256376831240705 -566
; mpfd: + 4256376831240705 -566 (8.05315e-171) class: Pos. norm. non-zero
; hwf : + 4256376831240705 -566 (8.05315e-171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111001001 #b1111000111110010011011110101000011100110101000000001)))
(assert (= r (fp #b0 #b00111001001 #b1111000111110010011011110101000011100110101000000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
