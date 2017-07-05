(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3816412532355457631894068981637246906757354736328125p459 {+ 1718759405860813 459 (2.05666e+138)}
; Y = -1.17805175031224340642665993073023855686187744140625p-780 {- 801873796358884 -780 (-1.85254e-235)}
; 1.3816412532355457631894068981637246906757354736328125p459 / -1.17805175031224340642665993073023855686187744140625p-780 == -oo
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
(assert (= x (fp #b0 #b10111001010 #b0110000110110011001111011011110101110011011111001101)))
(assert (= y (fp #b1 #b00011110011 #b0010110110010100110011001010110010010110001011100100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
