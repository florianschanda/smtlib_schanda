(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.142955010570991358775927437818609178066253662109375p190 {- 643812132338262 190 (-1.79361e+057)}
; Y = 1.8435296042960136464472498118993826210498809814453125p-513 {+ 3798919611583509 -513 (6.87484e-155)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.142955010570991358775927437818609178066253662109375p190 x 1.8435296042960136464472498118993826210498809814453125p-513 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111101 #b0010010010011000101100110001011100110011101001010110)))
(assert (= y (fp #b0 #b00111111110 #b1101011111110001100011100101111110101000110000010101)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
