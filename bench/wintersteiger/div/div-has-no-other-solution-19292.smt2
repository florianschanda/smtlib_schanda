(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.00995384780773367339179458213038742542266845703125p905 {- 44828145277812 905 (-2.73179e+272)}
; Y = 1.1019425249284553469664160729735158383846282958984375p-348 {+ 459108317280999 -348 (1.92185e-105)}
; -1.00995384780773367339179458213038742542266845703125p905 / 1.1019425249284553469664160729735158383846282958984375p-348 == -oo
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
(assert (= x (fp #b1 #b11110001000 #b0000001010001100010101011101101011001101101101110100)))
(assert (= y (fp #b0 #b01010100011 #b0001101000011000111001111100001010100011101011100111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
