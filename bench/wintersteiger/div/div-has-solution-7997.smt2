(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4650131807844288811537580841104499995708465576171875p824 {+ 2094233187703123 824 (1.63892e+248)}
; Y = 1.2968779710690887529977999292896129190921783447265625p-440 {+ 1337019519881257 -440 (4.56774e-133)}
; 1.4650131807844288811537580841104499995708465576171875p824 / 1.2968779710690887529977999292896129190921783447265625p-440 == +oo
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
(assert (= x (fp #b0 #b11100110111 #b0111011100001011000110101001001110101101100101010011)))
(assert (= y (fp #b0 #b01001000111 #b0100110000000000001100011101100010100101000000101001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
