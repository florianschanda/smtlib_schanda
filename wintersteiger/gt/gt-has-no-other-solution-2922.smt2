(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.0121472860828457651649614490452222526073455810546875p-349 {- 54706513076267 -349 (-8.82623e-106)}
; -oo > -1.0121472860828457651649614490452222526073455810546875p-349 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b01010100010 #b0000001100011100000101011010010001110110000000101011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
