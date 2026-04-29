(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.86964813771534199560164779541082680225372314453125p560 {+ 3916547028958260 560 (7.05598e+168)}
; Y = 1.386048998236816931495241078664548695087432861328125p539 {+ 1738610124606082 539 (2.49429e+162)}
; 1.86964813771534199560164779541082680225372314453125p560 * 1.386048998236816931495241078664548695087432861328125p539 == +oo
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
(assert (= x (fp #b0 #b11000101111 #b1101111010100001010000101010011010000011110000110100)))
(assert (= y (fp #b0 #b11000011010 #b0110001011010100000110110110111000010100101010000010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
