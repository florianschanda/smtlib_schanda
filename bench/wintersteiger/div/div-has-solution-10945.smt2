(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.62091089738490534699622003245167434215545654296875p968 {- 2796334086092940 968 (-4.04385e+291)}
; Y = -1.6297118896453393066536818878375925123691558837890625p-593 {- 2835970231557521 -593 (-5.02717e-179)}
; -1.62091089738490534699622003245167434215545654296875p968 / -1.6297118896453393066536818878375925123691558837890625p-593 == +oo
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
(assert (= x (fp #b1 #b11111000111 #b1001111011110100000001000011110111111111100010001100)))
(assert (= y (fp #b1 #b00110101110 #b1010000100110100110011000110001111101101110110010001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
