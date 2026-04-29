(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4432308387258847570677744442946277558803558349609375p-255 {- 1996134240125007 -255 (-2.4928e-077)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.4432308387258847570677744442946277558803558349609375p-255 m +oo == -1.4432308387258847570677744442946277558803558349609375p-255
; [HW: -1.4432308387258847570677744442946277558803558349609375p-255] 

; mpf : - 1996134240125007 -255
; mpfd: - 1996134240125007 -255 (-2.4928e-077) class: Neg. norm. non-zero
; hwf : - 1996134240125007 -255 (-2.4928e-077) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100000000 #b0111000101110111100100111000010011101000000001001111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b01100000000 #b0111000101110111100100111000010011101000000001001111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
