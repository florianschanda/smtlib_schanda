(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6018044745064645706378314571338705718517303466796875p935 {- 2710286407137211 935 (-4.65217e+281)}
; Y = -1.806286471865504505984745264868251979351043701171875p314 {- 3631191454247358 314 (-6.02844e+094)}
; -1.6018044745064645706378314571338705718517303466796875p935 * -1.806286471865504505984745264868251979351043701171875p314 == +oo
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
(assert (= x (fp #b1 #b11110100110 #b1001101000001111110110111010100010010111011110111011)))
(assert (= y (fp #b1 #b10100111001 #b1100111001101000110010100100101111011110100110111110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
