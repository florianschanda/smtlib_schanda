(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6861234805568743322368163717328570783138275146484375p745 {- 3090025451366087 745 (-3.12059e+224)}
; Y = 1.9268058419292055649663097938173450529575347900390625p-932 {+ 4173962444357169 -932 (5.3074e-281)}
; -1.6861234805568743322368163717328570783138275146484375p745 / 1.9268058419292055649663097938173450529575347900390625p-932 == -oo
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
(assert (= x (fp #b1 #b11011101000 #b1010111110100101110010011101011000000010011011000111)))
(assert (= y (fp #b0 #b00001011011 #b1110110101000011001001011100110011010011111000110001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
