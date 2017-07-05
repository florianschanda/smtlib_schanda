(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.194333371506102192682874374440871179103851318359375p488 {+ 875199699500534 488 (9.54473e+146)}
; +oo = 1.194333371506102192682874374440871179103851318359375p488 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10111100111 #b0011000110111111110101001111001100100011110111110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
