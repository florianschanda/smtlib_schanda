(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4441648360661243355451688330504111945629119873046875p606 {- 2000340590198475 606 (-3.83525e+182)}
; Y = 1.293986391083632003784487096709199249744415283203125p-728 {+ 1323997001336242 -728 (9.16416e-220)}
; -1.4441648360661243355451688330504111945629119873046875p606 / 1.293986391083632003784487096709199249744415283203125p-728 == -oo
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
(assert (= x (fp #b1 #b11001011101 #b0111000110110100110010010110010011101111111011001011)))
(assert (= y (fp #b0 #b00100100111 #b0100101101000010101100010010111100101100010110110010)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
