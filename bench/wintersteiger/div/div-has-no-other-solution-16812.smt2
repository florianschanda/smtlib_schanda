(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.523168337140317962763447212637402117252349853515625p981 {- 2356140728197178 981 (-3.11296e+295)}
; Y = 1.85204229964558297893972849124111235141754150390625p-492 {+ 3837257383187748 -492 (1.44842e-148)}
; -1.523168337140317962763447212637402117252349853515625p981 / 1.85204229964558297893972849124111235141754150390625p-492 == -oo
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
(assert (= x (fp #b1 #b11111010100 #b1000010111101110010111000011001001010010000000111010)))
(assert (= y (fp #b0 #b01000010011 #b1101101000011111011100011011001111001001010100100100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
