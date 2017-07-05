(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.344930850199144600765066570602357387542724609375p133 {- 1553430448425456 133 (-1.4645e+040)}
; Y = 1.61057980833089953165426777559332549571990966796875p-417 {+ 2749806997278988 -417 (4.75854e-126)}
; -1.344930850199144600765066570602357387542724609375p133 = 1.61057980833089953165426777559332549571990966796875p-417 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010000100 #b0101100001001101011000110110000011111100100111110000)))
(assert (= y (fp #b0 #b01001011110 #b1001110001001110111101010101010001100001000100001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
