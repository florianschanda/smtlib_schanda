(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.371644446050700683059631046489812433719635009765625p172 {- 1673737788748250 172 (-8.21109e+051)}
; Y = -1.135018316467464760677330559701658785343170166015625p980 {- 608068439731066 980 (-1.15984e+295)}
; -1.371644446050700683059631046489812433719635009765625p172 * -1.135018316467464760677330559701658785343170166015625p980 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101011 #b0101111100100100000101110010010110000111000111011010)))
(assert (= y (fp #b1 #b11111010011 #b0010001010010000100011110111010110010110101101111010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
