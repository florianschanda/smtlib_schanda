(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0605817963580863594330594423809088766574859619140625p-399 {- 272836155503713 -399 (-8.2144e-121)}
; -1.0605817963580863594330594423809088766574859619140625p-399 | == 1.0605817963580863594330594423809088766574859619140625p-399
; [HW: 1.0605817963580863594330594423809088766574859619140625p-399] 

; mpf : + 272836155503713 -399
; mpfd: + 272836155503713 -399 (8.2144e-121) class: Pos. norm. non-zero
; hwf : + 272836155503713 -399 (8.2144e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001110000 #b0000111110000010010010011110001000010111010001100001)))
(assert (= r (fp #b0 #b01001110000 #b0000111110000010010010011110001000010111010001100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
