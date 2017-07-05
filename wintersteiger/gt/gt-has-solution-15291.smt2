(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.40928552691494335391553249792195856571197509765625p878 {- 1843258146502276 878 (-2.84011e+264)}
; Y = 1.6385766261547514144325532470247708261013031005859375p897 {+ 2875893455598047 897 (1.7313e+270)}
; -1.40928552691494335391553249792195856571197509765625p878 > 1.6385766261547514144325532470247708261013031005859375p897 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101101 #b0110100011000110111011111011000011010011011010000100)))
(assert (= y (fp #b0 #b11110000000 #b1010001101111001110000011111110101010011000111011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
