(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.73047211928154620608211189392022788524627685546875p521 {- 3289753964200908 521 (-1.18793e+157)}
; Y = 1.8198150889255535478383762892917729914188385009765625p570 {+ 3692118928997833 570 (7.03274e+171)}
; -1.73047211928154620608211189392022788524627685546875p521 * 1.8198150889255535478383762892917729914188385009765625p570 == -oo
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
(assert (= x (fp #b1 #b11000001000 #b1011101100000000001110001000011011110100001111001100)))
(assert (= y (fp #b0 #b11000111001 #b1101000111011111011001101101001110110011110111001001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
