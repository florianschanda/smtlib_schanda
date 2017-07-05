(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7934157044470102615463247275329194962978363037109375p-549 {- 3573226670897455 -549 (-9.73225e-166)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = 1.58493552245675228817844981676898896694183349609375p825 {+ 2634315400971996 825 (3.54616e+248)}
; -1.7934157044470102615463247275329194962978363037109375p-549 x +oo 1.58493552245675228817844981676898896694183349609375p825 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011010 #b1100101100011101010010101010011010111011100100101111)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b0 #b11100111000 #b1001010110111110010101011001101100111000011011011100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
