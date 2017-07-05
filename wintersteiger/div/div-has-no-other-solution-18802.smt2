(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.437189537618893009351950240670703351497650146484375p936 {+ 1968926638710726 936 (8.34815e+281)}
; Y = -1.3424000580572965635184345956076867878437042236328125p-377 {- 1542032773878477 -377 (-4.36087e-114)}
; 1.437189537618893009351950240670703351497650146484375p936 / -1.3424000580572965635184345956076867878437042236328125p-377 == -oo
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
(assert (= x (fp #b0 #b11110100111 #b0110111111101011101001110100111000111001111111000110)))
(assert (= y (fp #b1 #b01010000110 #b0101011110100111100001111011101110000001001011001101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
