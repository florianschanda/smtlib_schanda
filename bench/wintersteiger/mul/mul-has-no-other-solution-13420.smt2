(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9404394193793590428498418987146578729152679443359375p886 {- 4235362618681407 886 (-1.0011e+267)}
; Y = 1.486620537664498531427170746610499918460845947265625p986 {+ 2191544072096666 986 (9.72245e+296)}
; -1.9404394193793590428498418987146578729152679443359375p886 * 1.486620537664498531427170746610499918460845947265625p986 == -oo
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
(assert (= x (fp #b1 #b11101110101 #b1111000011000000101000110100011000011010100000111111)))
(assert (= y (fp #b0 #b11111011001 #b0111110010010011001010011101111011010100101110011010)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
