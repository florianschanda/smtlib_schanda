(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.1668706348555033525116186865488998591899871826171875p-82 {- 751518528954323 -82 (-2.41303e-025)}
; +oo < -1.1668706348555033525116186865488998591899871826171875p-82 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b01110101101 #b0010101010111000000010001010111101011101111111010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
