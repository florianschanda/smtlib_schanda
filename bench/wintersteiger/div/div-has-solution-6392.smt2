(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1705836935902926843056093275663442909717559814453125p1004 {- 768240658888725 1004 (-2.00686e+302)}
; Y = 1.7010634567864191257768879950162954628467559814453125p-673 {+ 3157309122746389 -673 (4.34044e-203)}
; -1.1705836935902926843056093275663442909717559814453125p1004 / 1.7010634567864191257768879950162954628467559814453125p-673 == -oo
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
(assert (= x (fp #b1 #b11111101011 #b0010101110101011010111110111100100110011100000010101)))
(assert (= y (fp #b0 #b00101011110 #b1011001101111000111001010000101101010001100000010101)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
