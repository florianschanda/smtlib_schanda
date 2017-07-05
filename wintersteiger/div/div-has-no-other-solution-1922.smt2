(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3363794989624135922667846898548305034637451171875p897 {- 1514918586182200 897 (-1.412e+270)}
; Y = -1.69175702059145915967519613332115113735198974609375p-738 {- 3115396660166620 -738 (-1.17004e-222)}
; -1.3363794989624135922667846898548305034637451171875p897 / -1.69175702059145915967519613332115113735198974609375p-738 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000000 #b0101011000011100111101111000001100010110101000111000)))
(assert (= y (fp #b1 #b00100011101 #b1011000100010110111111001111010000110111111111011100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
