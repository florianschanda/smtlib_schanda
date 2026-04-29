(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.122724810897647973462198933702893555164337158203125p-714 {+ 552703412627762 -714 (1.30274e-215)}
; Y = 1.1539620940243635605071403915644623339176177978515625p-665 {+ 693383629277305 -665 (7.5378e-201)}
; 1.122724810897647973462198933702893555164337158203125p-714 < 1.1539620940243635605071403915644623339176177978515625p-665 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100110101 #b0001111101101010111001001010100100110110100100110010)))
(assert (= y (fp #b0 #b00101100110 #b0010011101101010000011110100111010101000100001111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
