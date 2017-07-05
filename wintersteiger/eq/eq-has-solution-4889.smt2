(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.236567147731007398903102512122131884098052978515625p-671 {- 1065403718369466 -671 (-1.26209e-202)}
; Y = -1.4091468294929934135240046089165844023227691650390625p912 {- 1842633508844465 912 (-4.87879e+274)}
; -1.236567147731007398903102512122131884098052978515625p-671 = -1.4091468294929934135240046089165844023227691650390625p912 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100000 #b0011110010001111101010100010001011010000000010111010)))
(assert (= y (fp #b1 #b11110001111 #b0110100010111101110110001011101111101111001110110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
