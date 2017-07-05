(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5256951719841043146885795067646540701389312744140625p78 {- 2367520580658081 78 (-4.61113e+023)}
; Y = 1.27630428409373397613535416894592344760894775390625p400 {+ 1244363870885412 400 (3.29574e+120)}
; -1.5256951719841043146885795067646540701389312744140625p78 = 1.27630428409373397613535416894592344760894775390625p400 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001101 #b1000011010010011111101010111001101010110001110100001)))
(assert (= y (fp #b0 #b10110001111 #b0100011010111011111000001010011111101101011000100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
