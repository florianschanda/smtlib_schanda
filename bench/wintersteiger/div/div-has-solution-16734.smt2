(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.82442108966870630837320277350954711437225341796875p977 {+ 3712862512228364 977 (2.3304e+294)}
; Y = -1.9024577089814262986777748665190301835536956787109375p-384 {- 4064308201886383 -384 (-4.82833e-116)}
; 1.82442108966870630837320277350954711437225341796875p977 / -1.9024577089814262986777748665190301835536956787109375p-384 == -oo
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
(assert (= x (fp #b0 #b11111010000 #b1101001100001101010000101011001001000010100000001100)))
(assert (= y (fp #b1 #b01001111111 #b1110011100000111011101111110101000011001001010101111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
