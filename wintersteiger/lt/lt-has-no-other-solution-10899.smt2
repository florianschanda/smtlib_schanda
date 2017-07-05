(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3066755641559402167928283233777619898319244384765625p-495 {- 1381143956456329 -495 (-1.27738e-149)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.3066755641559402167928283233777619898319244384765625p-495 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000010000 #b0100111010000010010010100010111010001000001110001001)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
