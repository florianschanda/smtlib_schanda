(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4658146903524897908255297807045280933380126953125p1008 {+ 2097842865895176 1008 (4.02082e+303)}
; Y = 1.5065421111547478982828351945499889552593231201171875p-184 {+ 2281262863043987 -184 (6.14415e-056)}
; 1.4658146903524897908255297807045280933380126953125p1008 / 1.5065421111547478982828351945499889552593231201171875p-184 == +oo
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
(assert (= x (fp #b0 #b11111101111 #b0111011100111111101000011010110100001111011100001000)))
(assert (= y (fp #b0 #b01101000111 #b1000000110101100101111100110100101110100110110010011)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
