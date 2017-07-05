(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.618033858949075920463656075298786163330078125p753 {+ 2783377056865408 753 (7.6661e+226)}
; Y = 1.8573927759886716959414343364187516272068023681640625p526 {+ 3861353786452737 526 (4.0802e+158)}
; Z = -1.8867868205971876083282268155016936361789703369140625p462 {- 3993732794798561 462 (-2.24688e+139)}
; 1.618033858949075920463656075298786163330078125p753 x 1.8573927759886716959414343364187516272068023681640625p526 -1.8867868205971876083282268155016936361789703369140625p462 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110000 #b1001111000110111011101111000110000000001110010000000)))
(assert (= y (fp #b0 #b11000001101 #b1101101101111110000101111100110010110010101100000001)))
(assert (= z (fp #b1 #b10111001101 #b1110001100000100011101100000100011111101000111100001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
