(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7381106290290342375470800106995739042758941650390625p600 {+ 3324154753853361 600 (7.21232e+180)}
; Y = 1.7823202647910012519361089289304800331592559814453125p-570 {+ 3523257252997141 -570 (4.61199e-172)}
; 1.7381106290290342375470800106995739042758941650390625p600 / 1.7823202647910012519361089289304800331592559814453125p-570 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001010111 #b1011110011110100110100010111010010000010011110110001)))
(assert (= y (fp #b0 #b00111000101 #b1100100001000110001001000001000001000110100000010101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
