(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.510211735322821713367602569633163511753082275390625p538 {- 2297789381079914 538 (-1.35886e+162)}
; Y = 1.3730885639726071456578893048572354018688201904296875p-753 {+ 1680241517683227 -753 (2.89809e-227)}
; -1.510211735322821713367602569633163511753082275390625p538 / 1.3730885639726071456578893048572354018688201904296875p-753 == -oo
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
(assert (= x (fp #b1 #b11000011001 #b1000001010011101001111000111110100111111001101101010)))
(assert (= y (fp #b0 #b00100001110 #b0101111110000010101110110110110011000110001000011011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
