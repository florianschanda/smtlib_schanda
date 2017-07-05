(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8470606713341906068848174982122145593166351318359375p342 {+ 3814822123780863 342 (1.65478e+103)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.8470606713341906068848174982122145593166351318359375p342 - +oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010101 #b1101100011011000111101111101100100011011101011111111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
