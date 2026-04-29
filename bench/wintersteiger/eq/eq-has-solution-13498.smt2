(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9026450182410388212161933552124537527561187744140625p-531 {+ 4065151767798177 -531 (2.70664e-160)}
; Y = -1.1229721734326758575406302043120376765727996826171875p-100 {- 553817434448339 -100 (-8.85869e-031)}
; 1.9026450182410388212161933552124537527561187744140625p-531 = -1.1229721734326758575406302043120376765727996826171875p-100 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101100 #b1110011100010011101111100111000100111110000110100001)))
(assert (= y (fp #b1 #b01110011011 #b0001111101111011000110101011011100110110000111010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
