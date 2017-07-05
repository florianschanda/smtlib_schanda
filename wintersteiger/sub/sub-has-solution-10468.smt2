(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.780087904706060708548420734587125480175018310546875p1016 {+ 3513203596950446 1016 (1.25002e+306)}
; -oo - 1.780087904706060708548420734587125480175018310546875p1016 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b11111110111 #b1100011110110011110101110100011010110111101110101110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
