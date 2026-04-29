(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5870378717570776672118881833739578723907470703125p845 {+ 2643783540497544 845 (3.72335e+254)}
; Y = -1.3459901870515835753394640050828456878662109375p-943 {- 1558201277479360 -943 (-1.81032e-284)}
; 1.5870378717570776672118881833739578723907470703125p845 / -1.3459901870515835753394640050828456878662109375p-943 == -oo
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
(assert (= x (fp #b0 #b11101001100 #b1001011001001000000111010010110010110101110010001000)))
(assert (= y (fp #b1 #b00001010000 #b0101100010010010110100000001101000011111100111000000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
