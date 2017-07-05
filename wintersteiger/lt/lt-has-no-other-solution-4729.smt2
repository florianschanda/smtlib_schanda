(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6560911169052128233403209378593601286411285400390625p363 {- 2954771709615409 363 (-3.11152e+109)}
; Y = 1.5291857975655991364050123593187890946865081787109375p-158 {+ 2383240960726191 -158 (4.18525e-048)}
; -1.6560911169052128233403209378593601286411285400390625p363 < 1.5291857975655991364050123593187890946865081787109375p-158 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101010 #b1010011111110101100101100110001001001101110100110001)))
(assert (= y (fp #b0 #b01101100001 #b1000011101111000101110000110111000001101010010101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
