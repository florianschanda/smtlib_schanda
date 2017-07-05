(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.48087061238012207553538246429525315761566162109375p440 {- 2165648710728540 440 (-4.20451e+132)}
; Y = 1.4390760191693823255576489827944897115230560302734375p944 {+ 1977422596318551 944 (2.13993e+284)}
; -1.48087061238012207553538246429525315761566162109375p440 m 1.4390760191693823255576489827944897115230560302734375p944 == -1.48087061238012207553538246429525315761566162109375p440
; [HW: -1.48087061238012207553538246429525315761566162109375p440] 

; mpf : - 2165648710728540 440
; mpfd: - 2165648710728540 440 (-4.20451e+132) class: Neg. norm. non-zero
; hwf : - 2165648710728540 440 (-4.20451e+132) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110111 #b0111101100011010010101100010000111000111101101011100)))
(assert (= y (fp #b0 #b11110101111 #b0111000001100111010010010011011011001010010101010111)))
(assert (= r (fp #b1 #b10110110111 #b0111101100011010010101100010000111000111101101011100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
