(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2956650067739989840021053169039078056812286376953125p787 {- 1331556814333877 787 (-1.05463e+237)}
; Y = 1.4358862026037899628505556393065489828586578369140625p667 {+ 1963056939622369 667 (8.7928e+200)}
; -1.2956650067739989840021053169039078056812286376953125p787 * 1.4358862026037899628505556393065489828586578369140625p667 == -oo
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
(assert (= x (fp #b1 #b11100010010 #b0100101110110000101100111010111010101010011110110101)))
(assert (= y (fp #b0 #b11010011010 #b0110111110010110001111001111100011110101111111100001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
