(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8788928834485412178167962338193319737911224365234375p539 {+ 3958181662397431 539 (3.38119e+162)}
; Y = 1.0977080430652341735964228064403869211673736572265625p-915 {+ 440037906339689 -915 (3.96315e-276)}
; 1.8788928834485412178167962338193319737911224365234375p539 / 1.0977080430652341735964228064403869211673736572265625p-915 == +oo
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
(assert (= x (fp #b0 #b11000011010 #b1110000011111111000111111011111100011001001111110111)))
(assert (= y (fp #b0 #b00001101100 #b0001100100000011011001001111000110000101011101101001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
