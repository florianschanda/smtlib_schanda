(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.825654347572332358851099343155510723590850830078125p-913 {+ 3718416612063586 -913 (2.63653e-275)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.825654347572332358851099343155510723590850830078125p-913 M +oo == +oo
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
(assert (= x (fp #b0 #b00001101110 #b1101001101011110000101010101010010011111100101100010)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
