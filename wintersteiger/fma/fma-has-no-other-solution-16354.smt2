(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.5308650157126841850896425967221148312091827392578125p249 {- 2390803486947677 249 (-1.38486e+075)}
; Z = 1.0702824523195906269990018699900247156620025634765625p349 {+ 316524026077193 349 (1.22735e+105)}
; -oo x -1.5308650157126841850896425967221148312091827392578125p249 1.0702824523195906269990018699900247156620025634765625p349 == +oo
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
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10011111000 #b1000011111100110110001010000100100010011100101011101)))
(assert (= z (fp #b0 #b10101011100 #b0001000111111110000001111110001000110010000000001001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
