(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5500087428993125637788352833013050258159637451171875p748 {- 2477019169571859 748 (-2.29494e+225)}
; Y = 1.94096896989841383174280053935945034027099609375p-419 {+ 4237747502201696 -419 (1.43367e-126)}
; -1.5500087428993125637788352833013050258159637451171875p748 / 1.94096896989841383174280053935945034027099609375p-419 == -oo
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
(assert (= x (fp #b1 #b11011101011 #b1000110011001101010111110111101101000100010000010011)))
(assert (= y (fp #b0 #b01001011100 #b1111000011100011010101111010100001000011101101100000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
