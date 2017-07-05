(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = NaN {+ 964106654051295 1024 (1.#SNAN)}
; Y = -1.2251323786886392230854880835977382957935333251953125p-985 {- 1013906096771189 -985 (-3.7466e-297)}
; NaN = -1.2251323786886392230854880835977382957935333251953125p-985 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b00000100110 #b0011100110100010010001101000101110111101000001110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
