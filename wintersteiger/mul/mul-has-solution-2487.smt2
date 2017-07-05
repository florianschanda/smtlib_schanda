(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.77046787957054707618453903705812990665435791015625p561 {+ 3469878855334852 561 (1.33634e+169)}
; Y = 1.3433661205531095550469444788177497684955596923828125p623 {+ 1546383532574637 623 (4.67608e+187)}
; 1.77046787957054707618453903705812990665435791015625p561 * 1.3433661205531095550469444788177497684955596923828125p623 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000110000 #b1100010100111101011000100000100101011111101111000100)))
(assert (= y (fp #b0 #b11001101110 #b0101011111100110110101111001001001010100011110101101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
