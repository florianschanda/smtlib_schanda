(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7634242673322833017124366961070336401462554931640625p280 {- 3438157245883265 280 (-3.42575e+084)}
; Y = 1.5035202715597595357621685252524912357330322265625p-882 {+ 2267653707370024 -882 (4.66287e-266)}
; -1.7634242673322833017124366961070336401462554931640625p280 / 1.5035202715597595357621685252524912357330322265625p-882 == -oo
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
(assert (= x (fp #b1 #b10100010111 #b1100001101101111110001011101010100101010001110000001)))
(assert (= y (fp #b0 #b00010001101 #b1000000011100110101101000101101100111000111000101000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
