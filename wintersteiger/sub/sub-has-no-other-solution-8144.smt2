(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1063376844967958145815600801142863929271697998046875p-885 {+ 478902356275211 -885 (4.28886e-267)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.1063376844967958145815600801142863929271697998046875p-885 - -oo == +oo
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
(assert (= x (fp #b0 #b00010001010 #b0001101100111000111100100100110100111111000000001011)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
