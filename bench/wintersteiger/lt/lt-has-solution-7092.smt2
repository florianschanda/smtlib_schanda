(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.220563638889661906006267599877901375293731689453125p-1022 {- 993330321914962 -1023 (-4.9077e-309)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -0.220563638889661906006267599877901375293731689453125p-1022 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0011100001110110110110111100111110110111110001010010)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
