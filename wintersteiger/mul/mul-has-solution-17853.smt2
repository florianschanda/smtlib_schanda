(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3790781397758766768646410127985291182994842529296875p535 {+ 1707216169038939 535 (1.55109e+161)}
; Y = 1.951493805703743422697016285383142530918121337890625p517 {+ 4285147148812714 517 (8.37288e+155)}
; 1.3790781397758766768646410127985291182994842529296875p535 * 1.951493805703743422697016285383142530918121337890625p517 == +oo
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
(assert (= x (fp #b0 #b11000010110 #b0110000100001011010000111101010011110111010001011011)))
(assert (= y (fp #b0 #b11000000100 #b1111001110010101000110010001100111011000000110101010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
