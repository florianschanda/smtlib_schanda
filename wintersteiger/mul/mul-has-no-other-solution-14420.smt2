(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1416764023593959365143746254034340381622314453125p894 {+ 638053792872968 894 (1.50785e+269)}
; Y = -1.8988196487663653311273037616047076880931854248046875p424 {- 4047923835257483 424 (-8.22625e+127)}
; 1.1416764023593959365143746254034340381622314453125p894 * -1.8988196487663653311273037616047076880931854248046875p424 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111101 #b0010010001000100111001111001101010111111101000001000)))
(assert (= y (fp #b1 #b10110100111 #b1110011000011001000010110110010001110100001010001011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
